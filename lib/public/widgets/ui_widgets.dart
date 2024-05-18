import 'package:flutter/material.dart';
import 'package:predictiva/utils/app_colors.dart';

Widget loaderWidget(bool loading, Widget widget) {
  return loading
      ? const SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
              strokeWidth: 2, color: AppColors.success))
      : widget;
}

Widget errorWidget(String message) {
  return Text(
    message,
    style: const TextStyle(color: AppColors.danger, fontSize: 10),
  );
}
