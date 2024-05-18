import 'package:flutter/material.dart';
import 'package:predictiva/components/app_table_filter.dart';
import 'package:predictiva/utils/app_colors.dart';
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
                        color: AppColors.light,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  AppTableFilter(screenSize: screenSize)
                ],
              ),
              addVerticalSpace(10),
              const Divider(
                thickness: 0.5,
                color: AppColors.sectionBorder,
              )
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Open trades",
                style: TextStyle(
                    color: AppColors.light,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              AppTableFilter(screenSize: screenSize)
            ],
          );
  }
}
