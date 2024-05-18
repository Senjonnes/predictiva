import 'package:flutter/material.dart';
import 'package:predictiva/utils/app_images.dart';

class AppTablePagination extends StatelessWidget {
  const AppTablePagination({super.key, required this.screenSize});

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "1 - 5 of 30",
          style: TextStyle(
            color: Color(0xFFE1E1E5),
          ),
        ),
        Row(
          children: [
            InkWell(
                onTap: () {},
                child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFF3E3F48),
                        ),
                        borderRadius: BorderRadius.circular(2)),
                    child: Image.asset(
                      AppImages.navArrowLeft,
                      height: 12,
                      width: 12,
                    ))),
            const SizedBox(
              width: 10,
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
                        borderRadius: BorderRadius.circular(2)),
                    child: Image.asset(
                      AppImages.navArrowRight,
                      height: 12,
                      width: 12,
                    )))
          ],
        )
      ],
    );
  }
}
