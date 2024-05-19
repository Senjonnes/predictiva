import 'package:flutter/material.dart';
import 'package:predictiva/config/config.dart';
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

String currencyFormatter(double amount, {showSymbol = true}) {
  int integerPart = amount.truncate();
  int decimalPart = ((amount - integerPart) * 100).round();

  String integerPartFormatted = integerPart.toString().replaceAllMapped(
        RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
        (Match match) => '${match[1]},',
      );

  String decimalPartFormatted = decimalPart.toString().padLeft(2, '0');

  return showSymbol
      ? '\$$integerPartFormatted.$decimalPartFormatted'
      : '$integerPartFormatted.$decimalPartFormatted';
}

String capitalize(String text) {
  return "${text[0].toUpperCase()}${text.substring(1).toLowerCase()}";
}

String convertDateFromMiliseconds(int timestamp) {
  return getFormatedDate(DateTime.fromMillisecondsSinceEpoch(timestamp));
}

String getFormatedDate(DateTime date) {
  return "${date.day}, ${months[date.month]}, ${date.year}";
}
