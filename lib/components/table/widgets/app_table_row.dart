import 'package:flutter/material.dart';
import 'package:predictiva/pages/home/model/order_model.dart';
import 'package:predictiva/utils/app_colors.dart';
import 'package:predictiva/utils/global_function.dart';
import 'package:predictiva/utils/helper_widgets.dart';

class AppTableRow extends StatelessWidget {
  const AppTableRow(
      {super.key,
      required this.screenSize,
      required this.currentPage,
      required this.pageSize,
      required this.order});

  final Size screenSize;
  final int currentPage;
  final int pageSize;
  final Order order;

  @override
  Widget build(BuildContext context) {
    return screenSize.width < 800
        ? Container(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: AppColors.sectionBorder)),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order.symbol ?? "",
                        style: const TextStyle(
                            color: AppColors.light, fontSize: 14),
                      ),
                      addVerticalSpace(8),
                      Row(
                        children: [
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 8),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.danger),
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColors.sellBg),
                              child: Center(
                                  child: Text(
                                capitalize(order.side!),
                                style: const TextStyle(
                                    color: AppColors.danger, fontSize: 12),
                              )))
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        order.price.toString(),
                        style: const TextStyle(
                            color: AppColors.light, fontSize: 12),
                      ),
                      addVerticalSpace(8),
                      Text(
                        convertDateFromMiliseconds(order.creation_time!),
                        style: const TextStyle(
                            color: AppColors.faintLight, fontSize: 12),
                      )
                    ],
                  )
                ]),
          )
        : Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.sectionBorder),
                borderRadius: BorderRadius.circular(8)),
            child: GridView.count(
                shrinkWrap: true,
                primary: false,
                childAspectRatio: 6,
                crossAxisCount: 6,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        order.symbol ?? "",
                        style: const TextStyle(
                            color: AppColors.light, fontSize: 12),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        order.price.toString(),
                        style: const TextStyle(
                            color: AppColors.light, fontSize: 12),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        order.type ?? "",
                        style: const TextStyle(
                            color: AppColors.light, fontSize: 12),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Container(
                              height: 36,
                              width: 48,
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.danger),
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColors.sellBg),
                              child: Center(
                                  child: Text(
                                capitalize(order.side!),
                                style: const TextStyle(
                                    color: AppColors.danger, fontSize: 12),
                              )))
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        order.quantity.toString(),
                        style: const TextStyle(
                            color: AppColors.light, fontSize: 12),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        convertDateFromMiliseconds(order.creation_time!),
                        style: const TextStyle(
                            color: AppColors.light, fontSize: 12),
                      )),
                ]),
          );
  }
}
