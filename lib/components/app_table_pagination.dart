import 'package:flutter/material.dart';
import 'package:predictiva/utils/app_colors.dart';
import 'package:predictiva/utils/app_images.dart';
import 'package:predictiva/utils/helper_widgets.dart';

class AppTablePagination extends StatelessWidget {
  final Size screenSize;
  final int currentPage;
  final int pageSize;
  final int totalItems;
  final Function(int) updateCurrentPage;

  const AppTablePagination(
      {super.key,
      required this.screenSize,
      required this.currentPage,
      required this.pageSize,
      required this.totalItems,
      required this.updateCurrentPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${(currentPage - 1) * (pageSize) + 1} - ${currentPage == (totalItems / pageSize).ceil() ? totalItems : pageSize * currentPage} of $totalItems",
          style: const TextStyle(
            color: AppColors.light,
          ),
        ),
        Row(
          children: [
            IgnorePointer(
                ignoring: currentPage == 1,
                child: InkWell(
                    onTap: () {
                      if (currentPage > 1) {
                        updateCurrentPage(currentPage - 1);
                      }
                    },
                    child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: currentPage == 1
                                  ? AppColors.sectionBorder.withOpacity(0.5)
                                  : AppColors.sectionBorder,
                            ),
                            borderRadius: BorderRadius.circular(2)),
                        child: Image.asset(
                          AppImages.navArrowLeft,
                          height: 12,
                          width: 12,
                        )))),
            addHorizontalSpace(10),
            IgnorePointer(
                ignoring: currentPage == (totalItems / pageSize).ceil(),
                child: InkWell(
                    onTap: () {
                      if (currentPage < (totalItems / pageSize).ceil()) {
                        updateCurrentPage(currentPage + 1);
                      }
                    },
                    child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color:
                                  currentPage == (totalItems / pageSize).ceil()
                                      ? AppColors.sectionBorder.withOpacity(0.5)
                                      : AppColors.sectionBorder,
                            ),
                            borderRadius: BorderRadius.circular(2)),
                        child: Image.asset(
                          AppImages.navArrowRight,
                          height: 12,
                          width: 12,
                        ))))
          ],
        )
      ],
    );
  }
}
