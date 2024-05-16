import 'package:flutter/material.dart';
import 'package:predictiva/utils/app_colors.dart';
import '../../../components/widgets.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.black,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleBar(screenSize: screenSize),
                HistoryCard(screenSize: screenSize),
                AppTable(screenSize: screenSize),
                SizedBox(height: screenSize.height / 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
