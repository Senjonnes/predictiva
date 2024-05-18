import 'package:flutter/material.dart';
import 'package:predictiva/public/widgets/responsive_widget.dart';
import 'package:predictiva/utils/app_colors.dart';
import 'package:predictiva/utils/helper_widgets.dart';
import 'widgets.dart';

class AppTable extends StatefulWidget {
  final Size screenSize;
  const AppTable({super.key, required this.screenSize});

  @override
  State<AppTable> createState() => _AppTableState();
}

class _AppTableState extends State<AppTable> {
  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
          padding: EdgeInsets.only(
            top: widget.screenSize.height * 0.03,
            left: ResponsiveWidget.isSmallScreen(context)
                ? widget.screenSize.width / 12
                : widget.screenSize.width / 10,
            right: ResponsiveWidget.isSmallScreen(context)
                ? widget.screenSize.width / 12
                : widget.screenSize.width / 10,
          ),
          child: Container(
              padding: EdgeInsets.all(widget.screenSize.width / 50),
              decoration: BoxDecoration(
                  color: AppColors.tableBg,
                  border: Border.all(color: AppColors.sectionBorder),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  AppTableHeader(screenSize: widget.screenSize),
                  widget.screenSize.width < 800
                      ? const SizedBox()
                      : addVerticalSpace(35),
                  AppTableColumn(screenSize: widget.screenSize),
                  widget.screenSize.width < 800
                      ? const SizedBox()
                      : addVerticalSpace(10),
                  for (int i = 0; i < 5; i++)
                    AppTableRow(screenSize: widget.screenSize),
                  addVerticalSpace(30),
                  AppTablePagination(screenSize: widget.screenSize),
                  addVerticalSpace(20),
                ],
              ))),
    );
  }
}
