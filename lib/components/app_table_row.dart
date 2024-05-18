import 'package:flutter/material.dart';
import 'package:predictiva/utils/helper_widgets.dart';

class AppTableRow extends StatelessWidget {
  const AppTableRow({super.key, required this.screenSize});

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return screenSize.width < 800
        ? Container(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xFF3E3F48))),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "MINAUSDT",
                        style:
                            TextStyle(color: Color(0xFFE1E1E5), fontSize: 14),
                      ),
                      addVerticalSpace(8),
                      Row(
                        children: [
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 8),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFE40C0C)),
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color(0xFF212126)),
                              child: const Center(
                                  child: Text(
                                "Sell",
                                style: TextStyle(
                                    color: Color(0xFFE40C0C), fontSize: 12),
                              )))
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "1.5636",
                        style:
                            TextStyle(color: Color(0xFFE1E1E5), fontSize: 12),
                      ),
                      addVerticalSpace(8),
                      const Text(
                        "19 Dec, 2023",
                        style:
                            TextStyle(color: Color(0xFFB1B1B8), fontSize: 12),
                      )
                    ],
                  )
                ]),
          )
        : Container(
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
                        style:
                            TextStyle(color: Color(0xFFE1E1E5), fontSize: 12),
                      )),
                  const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "1.5636",
                        style:
                            TextStyle(color: Color(0xFFE1E1E5), fontSize: 12),
                      )),
                  const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "LMT",
                        style:
                            TextStyle(color: Color(0xFFE1E1E5), fontSize: 12),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Container(
                              height: 36,
                              width: 48,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFE40C0C)),
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color(0xFF212126)),
                              child: const Center(
                                  child: Text(
                                "Sell",
                                style: TextStyle(
                                    color: Color(0xFFE40C0C), fontSize: 12),
                              )))
                        ],
                      )),
                  const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "0",
                        style:
                            TextStyle(color: Color(0xFFE1E1E5), fontSize: 12),
                      )),
                  const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "19 Dec, 2023",
                        style:
                            TextStyle(color: Color(0xFFE1E1E5), fontSize: 12),
                      )),
                ]),
          );
  }
}
