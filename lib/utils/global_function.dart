import 'package:flutter/material.dart';
import 'package:predictiva/utils/app_colors.dart';

Future<DateTime?> showRangeDatePicker(BuildContext context,
    {DateTime? initialDate, DateTime? firstDate, DateTime? lastDate}) async {
  return await showDatePicker(
    context: context,
    initialDate: initialDate ??
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day),
    firstDate: firstDate ?? DateTime(DateTime.now().year - 100),
    lastDate: lastDate ?? DateTime(2100),
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: AppColors.primaryColor, // <-- SEE HERE
            onPrimary: AppColors.white, // <-- SEE HERE
            onSurface: AppColors.greyText, // <-- SEE HERE
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: AppColors.black, // button text color
            ),
          ),
        ),
        child: child!,
      );
    },
  );
}
