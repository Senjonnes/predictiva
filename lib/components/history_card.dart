import 'package:flutter/material.dart';
import 'package:predictiva/utils/app_images.dart';
import 'package:predictiva/utils/helper_widgets.dart';

import 'widgets.dart';

class HistoryCard extends StatefulWidget {
  final Size screenSize;
  const HistoryCard({super.key, required this.screenSize});

  @override
  State<HistoryCard> createState() => _HistoryCardState();
}

class _HistoryCardState extends State<HistoryCard> {
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
              ? Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(
                          left: widget.screenSize.width / 30,
                          right: widget.screenSize.width / 30,
                          top: widget.screenSize.height / 50,
                          bottom: widget.screenSize.height / 50,
                        ),
                        decoration: BoxDecoration(
                            color: const Color(0xFF161619),
                            border: Border.all(color: const Color(0xFF3E3F48)),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        child: Column(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1, color: Color(0xFF3E3F48)))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Balance",
                                    style: TextStyle(
                                        color: Color(0xFFE1E1E5), fontSize: 10),
                                  ),
                                  addVerticalSpace(5),
                                  const Text(
                                    "\$616.81",
                                    style: TextStyle(
                                        color: Color(0xFFE1E1E5),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  addVerticalSpace(10),
                                ],
                              )),
                          addVerticalSpace(10),
                          Container(
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1, color: Color(0xFF3E3F48)))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Profits",
                                    style: TextStyle(
                                        color: Color(0xFFE1E1E5), fontSize: 10),
                                  ),
                                  addVerticalSpace(10),
                                  Row(
                                    children: [
                                      const Text(
                                        "\$86.03",
                                        style: TextStyle(
                                            color: Color(0xFFE1E1E5),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      addHorizontalSpace(5),
                                      Container(
                                        padding: const EdgeInsets.only(
                                            top: 1,
                                            bottom: 1,
                                            left: 2,
                                            right: 4),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color(0xFF00AC3A)),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                height: 10,
                                                width: 10,
                                                AppImages.arrowUpRight),
                                            addHorizontalSpace(5),
                                            const Text(
                                              "31%",
                                              style: TextStyle(
                                                  color: Color(0xFF00AC3A),
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  addVerticalSpace(10),
                                ],
                              )),
                          addVerticalSpace(10),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Assets",
                                    style: TextStyle(
                                        color: Color(0xFFE1E1E5), fontSize: 10),
                                  ),
                                  addVerticalSpace(10),
                                  const Text(
                                    "12",
                                    style: TextStyle(
                                        color: Color(0xFFE1E1E5),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )),
                        ])),
                    getSubscriptionExpiryWidget(),
                  ],
                )
              : Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(
                          left: widget.screenSize.width / 50,
                          right: widget.screenSize.width / 50,
                          top: widget.screenSize.height / 30,
                          bottom: widget.screenSize.height / 30,
                        ),
                        decoration: BoxDecoration(
                            color: const Color(0xFF161619),
                            border: Border.all(color: const Color(0xFF3E3F48)),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        child: GridView.count(
                            shrinkWrap: true,
                            primary: false,
                            childAspectRatio: 3.5,
                            crossAxisCount: 3,
                            children: [
                              Container(
                                  padding: EdgeInsets.only(
                                    left: widget.screenSize.width / 20,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          right: BorderSide(
                                              width: 1,
                                              color: Color(0xFF3E3F48)))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Balance",
                                        style: TextStyle(
                                            color: Color(0xFFE1E1E5),
                                            fontSize: 12),
                                      ),
                                      addVerticalSpace(10),
                                      const Text(
                                        "\$616.81",
                                        style: TextStyle(
                                            color: Color(0xFFE1E1E5),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )),
                              Container(
                                  padding: EdgeInsets.only(
                                    left: widget.screenSize.width / 20,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          right: BorderSide(
                                              width: 1,
                                              color: Color(0xFF3E3F48)))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Profits",
                                        style: TextStyle(
                                            color: Color(0xFFE1E1E5),
                                            fontSize: 12),
                                      ),
                                      addVerticalSpace(10),
                                      Row(
                                        children: [
                                          const Text(
                                            "\$86.03",
                                            style: TextStyle(
                                                color: Color(0xFFE1E1E5),
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          addHorizontalSpace(10),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                top: 1,
                                                bottom: 1,
                                                left: 2,
                                                right: 4),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: const Color(
                                                        0xFF00AC3A)),
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    height: 15,
                                                    width: 15,
                                                    AppImages.arrowUpRight),
                                                addHorizontalSpace(5),
                                                const Text(
                                                  "31%",
                                                  style: TextStyle(
                                                      color: Color(0xFF00AC3A),
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                              Container(
                                  padding: EdgeInsets.only(
                                    left: widget.screenSize.width / 20,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Assets",
                                        style: TextStyle(
                                            color: Color(0xFFE1E1E5),
                                            fontSize: 12),
                                      ),
                                      addVerticalSpace(10),
                                      const Text(
                                        "12",
                                        style: TextStyle(
                                            color: Color(0xFFE1E1E5),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )),
                            ])),
                    getSubscriptionExpiryWidget(),
                  ],
                )),
    );
  }

  Widget getSubscriptionExpiryWidget() {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          left: widget.screenSize.width / 50,
          right: widget.screenSize.width / 50,
          top: widget.screenSize.height / 40,
          bottom: widget.screenSize.height / 40,
        ),
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color(0xFF3E3F48)),
                right: BorderSide(color: Color(0xFF3E3F48)),
                left: BorderSide(color: Color(0xFF3E3F48))),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8))),
        child: Row(
          children: [
            Image.asset(
              AppImages.warningCircle,
              height: 24,
              width: 24,
            ),
            addHorizontalSpace(10),
            const Text(
              "This subscription expires in a month",
              style: TextStyle(color: Color(0xFFF4F4F5), fontSize: 12),
            )
          ],
        ));
  }
}
