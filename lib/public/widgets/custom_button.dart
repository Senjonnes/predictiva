// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      @required this.title,
      this.onTap,
      this.isFilled = true,
      this.prefixIcon,
      this.suffixIcon,
      this.disabled = false,
      this.color = AppColors.primaryColor,
      this.horizontalPadding = 24.0,
      this.verticalPadding = 10.0,
      this.textColor = AppColors.white,
      this.borderColor = AppColors.transparent,
      this.borderRadius = 8.0,
      this.fontSize = 16.0,
      this.height = 48.0,
      this.fontWeight = FontWeight.w600});

  final VoidCallback? onTap;
  final title;
  final bool isFilled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool disabled;
  final Color color;
  final double horizontalPadding;
  final double verticalPadding;
  final Color textColor;
  final Color borderColor;
  final double borderRadius;
  final double fontSize;
  final double height;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: disabled ? () => {} : onTap,
        child: Container(
          height: height,
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              vertical: verticalPadding, horizontal: horizontalPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: disabled
                ? AppColors.grey
                : isFilled
                    ? color
                    : AppColors.white,
            border: Border.all(color: borderColor, width: 1.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              prefixIcon != null
                  ? Container(
                      margin: const EdgeInsets.only(right: 15),
                      child: prefixIcon,
                    )
                  : Container(),
              Center(
                child: title is String
                    ? Text(
                        title ?? "",
                        style: TextStyle(
                            letterSpacing: 1.2,
                            fontSize: fontSize,
                            color: disabled ? AppColors.greyText : textColor,
                            fontWeight: fontWeight),
                      )
                    : title,
              ),
              suffixIcon != null
                  ? Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: suffixIcon,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
