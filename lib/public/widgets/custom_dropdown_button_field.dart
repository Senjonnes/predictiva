// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:predictiva/utils/app_colors.dart';

class CustomDropdownButtonFormField extends StatelessWidget {
  const CustomDropdownButtonFormField({
    super.key,
    required this.items,
    this.onChanged,
    this.selectedValue,
    this.hintText,
    this.label,
    this.margin = const EdgeInsets.symmetric(vertical: 8.0),
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
    this.prefixIcon,
    this.suffixIcon,
    this.textFormFieldStyle = const TextStyle(fontSize: 14.0),
    this.hintTextStyle,
    this.borderStyle = BorderStyle.solid,
    this.borderRadius = 2,
    this.borderWidth = 1,
    this.maxHeight = 36,
    this.textCapitalization = TextCapitalization.none,
    this.borderColor = AppColors.lightGreyBorder,
    this.focusedBorderColor = AppColors.sectionBorder,
    this.enabledBorderColor = AppColors.sectionBorder,
    this.disabledBorderColor = AppColors.disabledColor,
    this.fillColor = AppColors.lightGreyBg,
    this.filled = true,
    this.hasPrefixIcon = false,
    this.hasSuffixIcon = false,
    this.obscured = false,
    this.enabled = true,
    this.textInputType,
    this.onSaved,
    this.prefixText,
    this.maxLength,
    this.maxLengthEnforced = false,
    this.validator,
    this.inputFormatters,
    this.controller,
    this.maxLines = 1,
    this.errorText,
    this.isDense = false,
    this.required = false,
  });

  final List<dynamic> items;
  final String? selectedValue;
  final EdgeInsets margin;
  final EdgeInsets contentPadding;
  final TextStyle? textFormFieldStyle;
  final TextStyle? hintTextStyle;
  final BorderStyle borderStyle;
  final double borderRadius;
  final double borderWidth;
  final double maxHeight;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final String? label;
  final TextCapitalization textCapitalization;
  final String? prefixText;
  final Color borderColor;
  final Color focusedBorderColor;
  final Color enabledBorderColor;
  final Color disabledBorderColor;
  final Color fillColor;
  final bool filled;
  final bool obscured;
  final bool enabled;
  final bool hasPrefixIcon;
  final bool hasSuffixIcon;
  final TextInputType? textInputType;
  final onChanged;
  final ValueChanged<String?>? onSaved;
  final int? maxLength;
  final bool maxLengthEnforced;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final int maxLines;
  final String? errorText;
  final bool? isDense;
  final bool? required;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null) ...[
            Row(
              children: [
                Text(
                  '$label',
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: AppColors.inputLabelColor),
                ),
                required != null && required == true
                    ? const Text(' *',
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 10))
                    : const SizedBox()
              ],
            ),
          ],
          DropdownButtonHideUnderline(
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                constraints: BoxConstraints(maxHeight: maxHeight),
                errorText: errorText,
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
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: BorderSide(
                    color: disabledBorderColor,
                    width: borderWidth,
                    style: borderStyle,
                  ),
                ),
                prefixIcon: hasPrefixIcon ? prefixIcon : null,
                suffixIcon: hasSuffixIcon ? suffixIcon : null,
                contentPadding: contentPadding,
                hintStyle: hintTextStyle,
                filled: filled,
                fillColor: fillColor,
              ),
              hint: Text(
                hintText ?? 'Select',
                style: hintTextStyle,
              ),
              dropdownColor: AppColors.primaryColor,
              items: items.map((item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: SizedBox(
                      height: 30.0,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          item is String ? item : (item ? 'Yes' : 'No'),
                          style: const TextStyle(fontSize: 14),
                        ),
                      )),
                );
              }).toList(),
              value: selectedValue,
              onChanged: onChanged ?? onSaved,
              onSaved: onSaved,
              validator: validator,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: const TextStyle(color: AppColors.greyText),
              isDense: isDense ?? false,
              // menuItemStyleData: const MenuItemStyleData(height: 40),
            ),
          ),
        ],
      ),
    );
  }
}
