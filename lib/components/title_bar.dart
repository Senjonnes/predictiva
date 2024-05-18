import 'package:flutter/material.dart';
import 'package:predictiva/utils/helper_widgets.dart';

class TitleBar extends StatefulWidget {
  final Size screenSize;
  const TitleBar({super.key, required this.screenSize});

  @override
  State<TitleBar> createState() => _TitleBarState();
}

class _TitleBarState extends State<TitleBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          top: widget.screenSize.height / 15,
          left: widget.screenSize.width / 10,
          right: widget.screenSize.width / 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi Robin,',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
            addVerticalSpace(5),
            const Text(
              'Here is an overview of your account activities.',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ));
  }
}
