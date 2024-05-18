import 'package:flutter/material.dart';
import 'package:predictiva/utils/app_images.dart';
import 'package:predictiva/utils/helper_widgets.dart';

class AppTableHeader extends StatelessWidget {
  const AppTableHeader({super.key, required this.screenSize});

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return screenSize.width < 800
        ? Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Open trades",
                    style: TextStyle(
                        color: Color(0xFFE1E1E5),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: const Color(0xFF3E3F48),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          child: Image.asset(
                            AppImages.filterList,
                            height: 20,
                            width: 20,
                          )))
                ],
              ),
              addVerticalSpace(10),
              const Divider(
                thickness: 0.5,
                color: Color(0xFF3E3F48),
              )
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Open trades",
                style: TextStyle(
                    color: Color(0xFFE1E1E5),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              InkWell(
                  onTap: () {},
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: const Color(0xFF3E3F48),
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Filter",
                            style: TextStyle(
                                color: Color(0xFFE1E1E5),
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            AppImages.filterList,
                            height: 18,
                            width: 18,
                          ),
                        ],
                      )))
            ],
          );
  }
}
