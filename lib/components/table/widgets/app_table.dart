import 'package:flutter/material.dart';
import 'package:predictiva/components/table/models/filter_model.dart';
import 'package:predictiva/pages/home/model/order_model.dart';
import 'package:predictiva/public/widgets/responsive_widget.dart';
import 'package:predictiva/public/widgets/ui_widgets.dart';
import 'package:predictiva/utils/app_colors.dart';
import 'package:predictiva/utils/helper_widgets.dart';
import '../../widgets.dart';

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
  List<Order> localOrders = <Order>[];

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(AppTable oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.orders != widget.orders) {
      setState(() {
        localOrders = widget.orders;
        totalItems = localOrders.length;
      });
    }
  }

  List<Order> getActiveOrderList() {
    return localOrders.sublist(
        (currentPage - 1) * (pageSize),
        currentPage == (totalItems / pageSize).ceil()
            ? totalItems
            : pageSize * currentPage);
  }

  List<String> getAllUniqueSymbols() {
    if (widget.orders.isNotEmpty) {
      List<String?> allSymbols = widget.orders.map((e) => e.symbol).toList();
      Set<String> uniqueSymbols = Set<String>.from(allSymbols);
      return ['Symbol', ...uniqueSymbols];
    }
    return ['Symbol'];
  }

  filterOrders(FilterModel filter) {
    List<Order> orders = <Order>[];
    if (filter.symbol == null &&
        filter.price == null &&
        filter.startDate == null &&
        filter.endDate == null) {
      setState(() {
        localOrders = widget.orders;
        totalItems = localOrders.length;
      });
    } else {
      for (int i = 0; i < widget.orders.length; i++) {
        if ((filter.symbol != null &&
                widget.orders[i].symbol == filter.symbol) ||
            (filter.price != null && widget.orders[i].price == filter.price) ||
            (filter.startDate != null &&
                widget.orders[i].creation_time! >=
                    int.parse(filter.startDate.toString())) ||
            (filter.endDate != null &&
                widget.orders[i].creation_time! <=
                    int.parse(filter.endDate.toString()))) {
          orders.add(widget.orders[i]);
        }
      }
      setState(() {
        localOrders = orders;
        totalItems = localOrders.length;
      });
    }
  }

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
                  AppTableHeader(
                    screenSize: widget.screenSize,
                    symbols: getAllUniqueSymbols(),
                    getFilter: (p0) {
                      filterOrders(p0);
                    },
                  ),
                  widget.screenSize.width < 800
                      ? const SizedBox()
                      : addVerticalSpace(35),
                  AppTableColumn(screenSize: widget.screenSize),
                  widget.screenSize.width < 800
                      ? const SizedBox()
                      : addVerticalSpace(10),
                  loaderWidget(
                      widget.loading,
                      localOrders.isNotEmpty && widget.errorMessage.isEmpty
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
                  widget.loading
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
