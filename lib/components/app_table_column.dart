import 'package:flutter/material.dart';
import 'package:predictiva/utils/app_colors.dart';

class AppTableColumn extends StatelessWidget {
  const AppTableColumn({super.key, required this.screenSize});

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return screenSize.width < 800
        ? const SizedBox()
        : GridView.count(
            shrinkWrap: true,
            primary: false,
            childAspectRatio: 6,
            crossAxisCount: 6,
            children: const [
                Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Symbol",
                      style: TextStyle(
                          color: AppColors.light,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Price",
                      style: TextStyle(
                          color: AppColors.light,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Type",
                      style: TextStyle(
                          color: AppColors.light,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Action",
                      style: TextStyle(
                          color: AppColors.light,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Quantity",
                      style: TextStyle(
                          color: AppColors.light,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Date",
                      style: TextStyle(
                          color: AppColors.light,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )),
              ]);
  }
}
