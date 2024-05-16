import 'package:flutter/material.dart';
import 'package:predictiva/utils/app_images.dart';

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
          child: widget.screenSize.width < 800
              ? Container(
                  padding: EdgeInsets.all(widget.screenSize.width / 50),
                  decoration: BoxDecoration(
                      color: const Color(0xFF111115),
                      border: Border.all(color: const Color(0xFF3E3F48)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      getTableHeader(),
                      const SizedBox(
                        height: 35,
                      ),
                      getTableColumns(),
                      const SizedBox(
                        height: 10,
                      ),
                      getTableRow(),
                      getTableRow(),
                      getTableRow(),
                      getTableRow(),
                      getTableRow(),
                      const SizedBox(
                        height: 10,
                      ),
                      getTableFooter()
                    ],
                  ))
              : Container(
                  padding: EdgeInsets.all(widget.screenSize.width / 50),
                  decoration: BoxDecoration(
                      color: const Color(0xFF111115),
                      border: Border.all(color: const Color(0xFF3E3F48)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      getTableHeader(),
                      const SizedBox(
                        height: 35,
                      ),
                      getTableColumns(),
                      const SizedBox(
                        height: 10,
                      ),
                      getTableRow(),
                      getTableRow(),
                      getTableRow(),
                      getTableRow(),
                      getTableRow(),
                      const SizedBox(
                        height: 10,
                      ),
                      getTableFooter()
                    ],
                  ))),
    );
  }

  Widget getTableHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Symbol",
          style: TextStyle(
              color: Color(0xFFE1E1E5),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        InkWell(
            onTap: () {},
            child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFF3E3F48),
                    ),
                    borderRadius: BorderRadius.circular(8)),
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
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      AppImages.filterList,
                      height: 18,
                      width: 18,
                    ),
                  ],
                )))
      ],
    );
  }

  Widget getTableColumns() {
    return GridView.count(
        shrinkWrap: true,
        primary: false,
        childAspectRatio: 6,
        crossAxisCount: 6,
        children: const [
          Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "Symbol",
                style: TextStyle(
                    color: Color(0xFFE1E1E5),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              )),
          Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "Price",
                style: TextStyle(
                    color: Color(0xFFE1E1E5),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              )),
          Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "Type",
                style: TextStyle(
                    color: Color(0xFFE1E1E5),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              )),
          Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "Action",
                style: TextStyle(
                    color: Color(0xFFE1E1E5),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              )),
          Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "Quantity",
                style: TextStyle(
                    color: Color(0xFFE1E1E5),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              )),
          Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "Date",
                style: TextStyle(
                    color: Color(0xFFE1E1E5),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              )),
        ]);
  }

  Widget getTableRow() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(top: 20, bottom: 15),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xFF3E3F48)),
          borderRadius: BorderRadius.circular(8)),
      child: GridView.count(
          shrinkWrap: true,
          primary: false,
          childAspectRatio: 6,
          crossAxisCount: 6,
          children: [
            const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "MINAUSDT",
                  style: TextStyle(color: Color(0xFFE1E1E5), fontSize: 12),
                )),
            const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "1.5636",
                  style: TextStyle(color: Color(0xFFE1E1E5), fontSize: 12),
                )),
            const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "LMT",
                  style: TextStyle(color: Color(0xFFE1E1E5), fontSize: 12),
                )),
            Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE40C0C))),
                    child: const Text(
                      "LMT",
                      style: TextStyle(color: Color(0xFFE1E1E5), fontSize: 12),
                    ))),
            const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "0",
                  style: TextStyle(color: Color(0xFFE1E1E5), fontSize: 12),
                )),
            const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "19 Dec, 2023",
                  style: TextStyle(color: Color(0xFFE1E1E5), fontSize: 12),
                )),
          ]),
    );
  }

  Widget getTableFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "1 - 5 of 30",
          style: TextStyle(
            color: Color(0xFFE1E1E5),
          ),
        ),
        Row(
          children: [
            InkWell(
                onTap: () {},
                child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFF3E3F48),
                        ),
                        borderRadius: BorderRadius.circular(2)),
                    child: Image.asset(
                      AppImages.navArrowLeft,
                      height: 12,
                      width: 12,
                    ))),
            const SizedBox(
              width: 10,
            ),
            InkWell(
                onTap: () {},
                child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFF3E3F48),
                        ),
                        borderRadius: BorderRadius.circular(2)),
                    child: Image.asset(
                      AppImages.navArrowRight,
                      height: 12,
                      width: 12,
                    )))
          ],
        )
      ],
    );
  }
}
