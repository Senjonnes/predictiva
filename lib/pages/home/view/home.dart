import 'package:flutter/material.dart';
import 'package:predictiva/api/api_response.dart';
import 'package:predictiva/pages/home/model/portfolio_model.dart';
import 'package:predictiva/pages/home/service/home_service.dart';
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
  bool portfolioLoading = false;
  String portfolioErrorMessage = "";
  PortfolioModel portfolio = PortfolioModel();

  @override
  void initState() {
    super.initState();
    getPortFolio();
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
                HistoryCard(
                  screenSize: screenSize,
                  portfolio: portfolio,
                  loading: portfolioLoading,
                  errorMessage: portfolioErrorMessage,
                ),
                AppTable(screenSize: screenSize),
                SizedBox(height: screenSize.height / 5),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getPortFolio() async {
    setState(() => portfolioLoading = true);
    AppResponse<PortfolioModel> response =
        await HomeService().getPortFolio(context).catchError((e) {
      return e;
    });
    setState(() => portfolioLoading = false);
    if (response.status) {
      setState(() {
        portfolio = response.data;
        portfolioErrorMessage = "";
      });
    } else {
      setState(() {
        portfolioErrorMessage = response.message;
      });
    }
  }
}
