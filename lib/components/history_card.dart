import 'package:flutter/material.dart';
import 'package:predictiva/utils/app_images.dart';

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
                          left: widget.screenSize.width / 50,
                          right: widget.screenSize.width / 50,
                          top: widget.screenSize.height / 30,
                          bottom: widget.screenSize.height / 30,
                        ),
                        decoration: BoxDecoration(
                            color: const Color(0xFF111115),
                            border: Border.all(color: const Color(0xFF3E3F48)),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        child: GridView.count(
                            shrinkWrap: true,
                            primary: false,
                            childAspectRatio: 5,
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
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Balance",
                                        style: TextStyle(
                                            color: Color(0xFFE1E1E5),
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
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
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Profits",
                                        style: TextStyle(
                                            color: Color(0xFFE1E1E5),
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "\$86.03",
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
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Assets",
                                        style: TextStyle(
                                            color: Color(0xFFE1E1E5),
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "12",
                                        style: TextStyle(
                                            color: Color(0xFFE1E1E5),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )),
                            ])),
                    Container(
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
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "This subscription expires in a month",
                              style: TextStyle(
                                  color: Color(0xFFF4F4F5), fontSize: 12),
                            )
                          ],
                        )),
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
                            color: const Color(0xFF111115),
                            border: Border.all(color: const Color(0xFF3E3F48)),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        child: GridView.count(
                            shrinkWrap: true,
                            primary: false,
                            childAspectRatio: 5,
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
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Balance",
                                        style: TextStyle(
                                            color: Color(0xFFE1E1E5),
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
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
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Profits",
                                        style: TextStyle(
                                            color: Color(0xFFE1E1E5),
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "\$86.03",
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
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Assets",
                                        style: TextStyle(
                                            color: Color(0xFFE1E1E5),
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "12",
                                        style: TextStyle(
                                            color: Color(0xFFE1E1E5),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )),
                            ])),
                    Container(
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
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "This subscription expires in a month",
                              style: TextStyle(
                                  color: Color(0xFFF4F4F5), fontSize: 12),
                            )
                          ],
                        )),
                  ],
                )),
    );
  }
}
