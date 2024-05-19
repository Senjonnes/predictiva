import 'package:flutter/material.dart';
import 'package:predictiva/pages/home/model/order_model.dart';
import 'package:predictiva/public/widgets/responsive_widget.dart';
import 'package:predictiva/public/widgets/ui_widgets.dart';
import 'package:predictiva/utils/app_colors.dart';
import 'package:predictiva/utils/helper_widgets.dart';
import 'widgets.dart';

class AppTable extends StatefulWidget {
  final Size screenSize;
  final bool loading;
  final String errorMessage;
  final List<Order> orders;
  const AppTable(
      {super.key,
      required this.screenSize,
      required this.loading,
      required this.errorMessage,
      required this.orders});

  @override
  State<AppTable> createState() => _AppTableState();
}

class _AppTableState extends State<AppTable> {
  int currentPage = 1;
  int pageSize = 5;
  int totalItems = 0;

  @override
  void initState() {
    super.initState();
  }

  List<Order> getActiveOrderList() {
    return widget.orders.sublist(
        (currentPage - 1) * (pageSize),
        currentPage == (totalItems / pageSize).ceil()
            ? totalItems
            : pageSize * currentPage);
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      totalItems = widget.orders.length;
    });
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
                  loaderWidget(
                      widget.loading,
                      widget.orders.isNotEmpty && widget.errorMessage.isEmpty
                          ? ListView.builder(
                              itemCount: getActiveOrderList().length,
                              shrinkWrap: true,
                              itemBuilder: ((context, index) {
                                return AppTableRow(
                                  screenSize: widget.screenSize,
                                  currentPage: currentPage,
                                  pageSize: pageSize,
                                  order: getActiveOrderList()[index],
                                );
                              }))
                          : widget.errorMessage.isNotEmpty
                              ? errorWidget(widget.errorMessage)
                              : const SizedBox()),
                  widget.orders.isEmpty
                      ? const SizedBox()
                      : Column(
                          children: [
                            addVerticalSpace(30),
                            AppTablePagination(
                              screenSize: widget.screenSize,
                              currentPage: currentPage,
                              pageSize: pageSize,
                              totalItems: totalItems,
                              updateCurrentPage: (p0) {
                                setState(() {
                                  currentPage = p0;
                                });
                              },
                            ),
                            addVerticalSpace(20),
                          ],
                        )
                ],
              ))),
    );
  }
}
