// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:predictiva/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextStyle? textFormFieldStyle;
  final TextStyle? hintTextStyle;
  final BorderStyle borderStyle;
  final double borderRadius;
  final double borderWidth;
  final double contentPaddingHorizontal;
  final double contentPaddingVertical;
  final double prefixPadding;
  final String? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final String? label;
  final String? otherLabel;
  final String? initialValue;
  final TextCapitalization textCapitalization;
  final String? prefixText;
  final Color borderColor;
  final Color focusedBorderColor;
  final Color enabledBorderColor;
  final Color errorBorderColor;
  final Color focusedErrorBorderColor;
  final Color disabledBorderColor;
  final Color fillColor;
  final bool filled;
  final bool obscured;
  final bool enabled;
  final bool hasPrefixIcon;
  final bool hasSuffixIcon;
  final TextInputType? textInputType;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String?>? onSaved;
  final int? maxLength;
  final bool maxLengthEnforced;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode? autovalidateMode;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final EdgeInsets margin;
  final int maxLines;
  final String? errorText;
  final bool? required;
  final bool showCounterText;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  final bool? autofocus;
  final Function(String)? onFieldSubmitted;
  final bool? isDense;
  final FocusNode? focusNode;

  const CustomTextFormField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.textFormFieldStyle = const TextStyle(fontSize: 14.0),
    this.hintTextStyle,
    this.borderStyle = BorderStyle.solid,
    this.borderRadius = 8,
    this.borderWidth = 1,
    this.contentPaddingHorizontal = 12,
    this.contentPaddingVertical = 12,
    this.prefixPadding = 12,
    this.hintText,
    this.label,
    this.otherLabel = "",
    this.initialValue,
    this.textCapitalization = TextCapitalization.none,
    this.borderColor = AppColors.disabled,
    this.focusedBorderColor = AppColors.sectionBorder,
    this.enabledBorderColor = AppColors.disabled,
    this.errorBorderColor = AppColors.deepOrange,
    this.focusedErrorBorderColor = AppColors.deepOrange,
    this.disabledBorderColor = AppColors.disabledColor,
    required this.fillColor,
    this.filled = true,
    this.hasPrefixIcon = false,
    this.hasSuffixIcon = false,
    this.obscured = false,
    this.enabled = true,
    this.textInputType,
    this.onChanged,
    this.onSaved,
    this.prefixText,
    this.maxLength,
    this.maxLengthEnforced = false,
    this.validator,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.inputFormatters,
    this.controller,
    this.maxLines = 1,
    this.margin = const EdgeInsets.symmetric(vertical: 8.0),
    this.errorText,
    this.required,
    this.showCounterText = true,
    this.textInputAction = TextInputAction.next,
    this.textAlign = TextAlign.left,
    this.autofocus = false,
    this.onFieldSubmitted,
    this.isDense = false,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null) ...[
            Text(
              '$label',
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: "SFPro",
                  color: AppColors.deepGray),
            ),
            const SizedBox(height: 8.0),
          ],
          TextFormField(
            controller: controller,
            enabled: enabled,
            style: textFormFieldStyle,
            keyboardType: textInputType,
            textCapitalization: textCapitalization,
            onChanged: onChanged,
            onSaved: onSaved,
            maxLength: maxLength,
            initialValue: controller != null ? null : initialValue,
            validator: validator,
            autovalidateMode: autovalidateMode,
            inputFormatters: inputFormatters,
            maxLines: maxLines,
            onFieldSubmitted: onFieldSubmitted,
            textInputAction: textInputAction,
            cursorColor: AppColors.hint,
            cursorWidth: 1.0,
            textAlign: textAlign ?? TextAlign.left,
            autofocus: autofocus ?? false,
            focusNode: focusNode,
            decoration: InputDecoration(
              error: errorText == "" || errorText == null
                  ? null
                  : Text(errorText ?? ""),
              counterText: !showCounterText ? "" : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: borderColor,
                  width: borderWidth,
                  style: borderStyle,
                ),
              ),
              prefixText: prefixText,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: enabledBorderColor,
                  width: borderWidth,
                  style: borderStyle,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: focusedBorderColor,
                  width: borderWidth,
                  style: borderStyle,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: errorBorderColor,
                  width: borderWidth,
                  style: borderStyle,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: focusedErrorBorderColor,
                  width: borderWidth,
                  style: borderStyle,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: disabledBorderColor,
                  width: borderWidth,
                  style: borderStyle,
                ),
              ),
              prefixIcon: hasPrefixIcon
                  ? Transform.scale(
                      scale: 0.5,
                      child: Image.asset(
                        prefixIcon ?? "",
                      ))
                  : null,
              suffixIcon: hasSuffixIcon ? suffixIcon : null,
              contentPadding: EdgeInsets.symmetric(
                horizontal: contentPaddingHorizontal,
                vertical: contentPaddingVertical,
              ),
              prefix: Padding(padding: EdgeInsets.only(left: prefixPadding)),
              hintText: hintText,
              hintStyle: errorText == "" || errorText == null
                  ? hintTextStyle
                  : const TextStyle(color: AppColors.deepOrange),
              filled: filled,
              fillColor: enabled || hasSuffixIcon
                  ? fillColor
                  : AppColors.disabledInput,
              isDense: isDense,
            ),
            obscureText: obscured,
          ),
        ],
      ),
    );
  }
}
