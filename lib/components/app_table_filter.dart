import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:predictiva/public/widgets/custom_button.dart';
import 'package:predictiva/public/widgets/custom_dropdown_button_field.dart';
import 'package:predictiva/public/widgets/custom_text_form_field.dart';
import 'package:predictiva/utils/app_colors.dart';
import 'package:predictiva/utils/app_images.dart';
import 'package:predictiva/utils/global_function.dart';
import 'package:predictiva/utils/helper_widgets.dart';

class AppTableFilter extends StatefulWidget {
  final Size screenSize;
  const AppTableFilter({super.key, required this.screenSize});

  @override
  State<AppTableFilter> createState() => _AppTableFilterState();
}

class _AppTableFilterState extends State<AppTableFilter> {
  String selectedSymbol = "Symbol";
  TextEditingController priceController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTapDown: (TapDownDetails details) {
          _showPopupMenu(details.globalPosition);
        },
        child: widget.screenSize.width < 800
            ? Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFF3E3F48),
                    ),
                    borderRadius: BorderRadius.circular(8)),
                child: Image.asset(
                  AppImages.filterList,
                  height: 20,
                  width: 20,
                ))
            : Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFF3E3F48),
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Filter",
                      style: TextStyle(
                          color: Color(0xFFE1E1E5),
                          fontWeight: FontWeight.w600),
                    ),
                    addHorizontalSpace(10),
                    Image.asset(
                      AppImages.filterList,
                      height: 18,
                      width: 18,
                    ),
                  ],
                )));
  }

  _showPopupMenu(Offset offset) async {
    double left = offset.dx;
    double top = offset.dy;
    await showMenu(
      context: context,
      color: const Color(0xFF19191B),
      surfaceTintColor: const Color(0xFF19191B),
      position: RelativeRect.fromDirectional(
          textDirection: Directionality.of(context),
          start: left,
          top: top,
          end: left + 2,
          bottom: top + 2),
      items: [
        PopupMenuItem(
          enabled: false,
          child: SizedBox(
            width: 467,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: CustomDropdownButtonFormField(
                      hintText: "Symbol",
                      selectedValue: selectedSymbol,
                      textInputType: TextInputType.text,
                      fillColor: const Color(0xFF19191B),
                      enabledBorderColor: const Color(0xFF3E3F48),
                      hintTextStyle: const TextStyle(
                          color: Color(0xFF9E9EA5), fontSize: 12),
                      isDense: true,
                      items: const ['Symbol', 'Test', 'Items'],
                      borderRadius: 5,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      onSaved: (value) {},
                      onChanged: (value) => {
                        setState(() {
                          selectedSymbol = value;
                        })
                      },
                    )),
                    addHorizontalSpace(10),
                    Expanded(
                        child: CustomTextFormField(
                      controller: priceController,
                      hintText: "Price",
                      textInputType: TextInputType.phone,
                      fillColor: const Color(0xFF19191B),
                      enabledBorderColor: const Color(0xFF3E3F48),
                      hintTextStyle: const TextStyle(
                          color: Color(0xFF9E9EA5), fontSize: 12),
                      prefixPadding: 0,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'^[0-9]*$'))
                      ],
                      contentPaddingVertical: 12,
                      isDense: true,
                      borderRadius: 5,
                      onChanged: (value) => {},
                    ))
                  ],
                ),
                addVerticalSpace(5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Date range",
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              selectStartDate(context);
                            },
                            child: CustomTextFormField(
                              controller: startDateController,
                              hintText: "Start date",
                              enabled: false,
                              textInputType: TextInputType.text,
                              fillColor: const Color(0xFF19191B),
                              enabledBorderColor: const Color(0xFF3E3F48),
                              disabledBorderColor: const Color(0xFF3E3F48),
                              hintTextStyle: const TextStyle(
                                  color: Color(0xFF9E9EA5), fontSize: 12),
                              suffixIcon: Transform.scale(
                                  scale: 0.4,
                                  child: Image.asset(AppImages.calendar)),
                              hasSuffixIcon: true,
                              prefixPadding: 0,
                              contentPaddingVertical: 0,
                              isDense: true,
                              borderRadius: 5,
                              onChanged: (value) => {},
                            ))),
                    addHorizontalSpace(10),
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              selectEndDate(context);
                            },
                            child: CustomTextFormField(
                              controller: endDateController,
                              hintText: "End date",
                              enabled: false,
                              textInputType: TextInputType.text,
                              fillColor: const Color(0xFF19191B),
                              enabledBorderColor: const Color(0xFF3E3F48),
                              disabledBorderColor: const Color(0xFF3E3F48),
                              hintTextStyle: const TextStyle(
                                  color: Color(0xFF9E9EA5), fontSize: 12),
                              suffixIcon: Transform.scale(
                                  scale: 0.4,
                                  child: Image.asset(AppImages.calendar)),
                              hasSuffixIcon: true,
                              prefixPadding: 0,
                              contentPaddingVertical: 0,
                              isDense: true,
                              borderRadius: 5,
                              onChanged: (value) => {},
                            )))
                  ],
                ),
                SizedBox(
                    width: widget.screenSize.width / 13,
                    child: CustomButton(
                      title: "Filter table",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.button,
                      verticalPadding: 0,
                      horizontalPadding: 0,
                      height: 35,
                      borderRadius: 5,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ))
              ],
            ),
          ),
        ),
      ],
      elevation: 8.0,
    );
  }

  selectStartDate(BuildContext context) async {
    DateTime? pickedDate;
    pickedDate = await showRangeDatePicker(context,
        firstDate: DateTime(DateTime.now().year - 100),
        lastDate: pickedDate ?? DateTime(DateTime.now().year - 18, 12, 31),
        initialDate: pickedDate ?? DateTime(DateTime.now().year - 18, 12, 31));
    if (pickedDate != null) {
      setState(() {
        startDateController.text = pickedDate.toString().split(" ")[0];
      });
    }
  }

  selectEndDate(BuildContext context) async {
    DateTime? pickedDate;
    pickedDate = await showRangeDatePicker(context,
        firstDate: DateTime(DateTime.now().year - 100),
        lastDate: pickedDate ?? DateTime(DateTime.now().year - 18, 12, 31),
        initialDate: pickedDate ?? DateTime(DateTime.now().year - 18, 12, 31));
    if (pickedDate != null) {
      setState(() {
        endDateController.text = pickedDate.toString().split(" ")[0];
      });
    }
  }
}