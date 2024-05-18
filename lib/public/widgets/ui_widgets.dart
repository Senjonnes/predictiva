import 'package:flutter/material.dart';

Widget loaderWidget(bool loading, Widget widget) {
  return loading
      ? const SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
              strokeWidth: 2, color: Color(0xFF00AC3A)))
      : widget;
}

Widget errorWidget(String message) {
  return Text(
    message,
    style: const TextStyle(color: Color(0xFFE40C0C), fontSize: 10),
  );
}
