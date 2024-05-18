import 'package:flutter/material.dart';
import 'package:predictiva/pages/home/model/portfolio_model.dart';
import 'package:predictiva/public/widgets/responsive_widget.dart';
import 'package:predictiva/public/widgets/ui_widgets.dart';
import 'package:predictiva/utils/app_colors.dart';
import 'package:predictiva/utils/app_images.dart';
import 'package:predictiva/utils/global_function.dart';
import 'package:predictiva/utils/helper_widgets.dart';

class HistoryCard extends StatelessWidget {
  final Size screenSize;
  final PortfolioModel portfolio;
  final bool loading;
  final String errorMessage;
  const HistoryCard(
      {super.key,
      required this.screenSize,
      required this.portfolio,
      required this.loading,
      required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
          padding: EdgeInsets.only(
            top: screenSize.height * 0.03,
            left: ResponsiveWidget.isSmallScreen(context)
                ? screenSize.width / 12
                : screenSize.width / 10,
            right: ResponsiveWidget.isSmallScreen(context)
                ? screenSize.width / 12
                : screenSize.width / 10,
          ),
          child: screenSize.width < 800
              ? Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(
                          left: screenSize.width / 30,
                          right: screenSize.width / 30,
                          top: screenSize.height / 50,
                          bottom: screenSize.height / 50,
                        ),
                        decoration: BoxDecoration(
                            color: AppColors.tableBg,
                            border: Border.all(color: AppColors.sectionBorder),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        child: Column(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1,
                                          color: AppColors.sectionBorder))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Balance",
                                    style: TextStyle(
                                        color: AppColors.light, fontSize: 10),
                                  ),
                                  addVerticalSpace(5),
                                  loaderWidget(
                                      loading,
                                      errorMessage.isEmpty
                                          ? Text(
                                              portfolio.data != null
                                                  ? currencyFormatter(portfolio
                                                      .data!
                                                      .portfolio!
                                                      .balance!)
                                                  : '',
                                              style: const TextStyle(
                                                  color: AppColors.light,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          : errorWidget(errorMessage)),
                                  addVerticalSpace(10),
                                ],
                              )),
                          addVerticalSpace(10),
                          Container(
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1,
                                          color: AppColors.sectionBorder))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Profits",
                                    style: TextStyle(
                                        color: AppColors.light, fontSize: 10),
                                  ),
                                  addVerticalSpace(10),
                                  loaderWidget(
                                      loading,
                                      errorMessage.isEmpty
                                          ? Row(
                                              children: [
                                                Text(
                                                  portfolio.data != null
                                                      ? currencyFormatter(
                                                          portfolio
                                                              .data!
                                                              .portfolio!
                                                              .profit!)
                                                      : '',
                                                  style: const TextStyle(
                                                      color: AppColors.light,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                addHorizontalSpace(5),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 1,
                                                          bottom: 1,
                                                          left: 2,
                                                          right: 4),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: portfolio.data !=
                                                                      null &&
                                                                  portfolio
                                                                          .data!
                                                                          .portfolio!
                                                                          .profit_percentage! <
                                                                      10
                                                              ? AppColors.danger
                                                              : AppColors
                                                                  .success),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100)),
                                                  child: Row(
                                                    children: [
                                                      Image.asset(
                                                          height: 10,
                                                          width: 10,
                                                          portfolio.data !=
                                                                      null &&
                                                                  portfolio
                                                                          .data!
                                                                          .portfolio!
                                                                          .profit_percentage! <
                                                                      10
                                                              ? AppImages
                                                                  .arrowDownLeft
                                                              : AppImages
                                                                  .arrowUpRight),
                                                      addHorizontalSpace(5),
                                                      Text(
                                                        "${portfolio.data?.portfolio?.profit_percentage.toString() ?? ''}%",
                                                        style: TextStyle(
                                                            color: portfolio.data !=
                                                                        null &&
                                                                    portfolio
                                                                            .data!
                                                                            .portfolio!
                                                                            .profit_percentage! <
                                                                        10
                                                                ? AppColors
                                                                    .danger
                                                                : AppColors
                                                                    .success,
                                                            fontSize: 10),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          : errorWidget(errorMessage)),
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
                                        color: AppColors.light, fontSize: 10),
                                  ),
                                  addVerticalSpace(10),
                                  loaderWidget(
                                      loading,
                                      errorMessage.isEmpty
                                          ? Text(
                                              portfolio.data?.portfolio?.assets
                                                      .toString() ??
                                                  '',
                                              style: const TextStyle(
                                                  color: AppColors.light,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          : errorWidget(errorMessage))
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
                          left: screenSize.width / 50,
                          right: screenSize.width / 50,
                          top: screenSize.height / 30,
                          bottom: screenSize.height / 30,
                        ),
                        decoration: BoxDecoration(
                            color: AppColors.tableBg,
                            border: Border.all(color: AppColors.sectionBorder),
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
                                    left: screenSize.width / 20,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          right: BorderSide(
                                              width: 1,
                                              color: AppColors.sectionBorder))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Balance",
                                        style: TextStyle(
                                            color: AppColors.light,
                                            fontSize: 12),
                                      ),
                                      addVerticalSpace(10),
                                      loaderWidget(
                                          loading,
                                          errorMessage.isEmpty
                                              ? Text(
                                                  portfolio.data != null
                                                      ? currencyFormatter(
                                                          portfolio
                                                              .data!
                                                              .portfolio!
                                                              .balance!)
                                                      : '',
                                                  style: const TextStyle(
                                                      color: AppColors.light,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )
                                              : errorWidget(errorMessage))
                                    ],
                                  )),
                              Container(
                                  padding: EdgeInsets.only(
                                    left: screenSize.width / 20,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          right: BorderSide(
                                              width: 1,
                                              color: AppColors.sectionBorder))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Profits",
                                        style: TextStyle(
                                            color: AppColors.light,
                                            fontSize: 12),
                                      ),
                                      addVerticalSpace(10),
                                      loaderWidget(
                                          loading,
                                          errorMessage.isEmpty
                                              ? Row(
                                                  children: [
                                                    Text(
                                                      portfolio.data != null
                                                          ? currencyFormatter(
                                                              portfolio
                                                                  .data!
                                                                  .portfolio!
                                                                  .profit!)
                                                          : '',
                                                      style: const TextStyle(
                                                          color:
                                                              AppColors.light,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    addHorizontalSpace(10),
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 1,
                                                              bottom: 1,
                                                              left: 2,
                                                              right: 4),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: portfolio.data !=
                                                                          null &&
                                                                      portfolio
                                                                              .data!
                                                                              .portfolio!
                                                                              .profit_percentage! <
                                                                          10
                                                                  ? AppColors
                                                                      .danger
                                                                  : AppColors
                                                                      .success),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100)),
                                                      child: Row(
                                                        children: [
                                                          Image.asset(
                                                              height: 15,
                                                              width: 15,
                                                              portfolio.data !=
                                                                          null &&
                                                                      portfolio
                                                                              .data!
                                                                              .portfolio!
                                                                              .profit_percentage! <
                                                                          10
                                                                  ? AppImages
                                                                      .arrowDownLeft
                                                                  : AppImages
                                                                      .arrowUpRight),
                                                          addHorizontalSpace(5),
                                                          Text(
                                                            "${portfolio.data?.portfolio?.profit_percentage.toString() ?? ''}%",
                                                            style: TextStyle(
                                                                color: portfolio.data !=
                                                                            null &&
                                                                        portfolio.data!.portfolio!.profit_percentage! <
                                                                            10
                                                                    ? AppColors
                                                                        .danger
                                                                    : AppColors
                                                                        .success,
                                                                fontSize: 10),
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                )
                                              : errorWidget(errorMessage))
                                    ],
                                  )),
                              Container(
                                  padding: EdgeInsets.only(
                                    left: screenSize.width / 20,
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
                                            color: AppColors.light,
                                            fontSize: 12),
                                      ),
                                      addVerticalSpace(10),
                                      loaderWidget(
                                          loading,
                                          errorMessage.isEmpty
                                              ? Text(
                                                  portfolio.data?.portfolio
                                                          ?.assets
                                                          .toString() ??
                                                      '',
                                                  style: const TextStyle(
                                                      color: AppColors.light,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )
                                              : errorWidget(errorMessage))
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
          left: screenSize.width / 50,
          right: screenSize.width / 50,
          top: screenSize.height / 40,
          bottom: screenSize.height / 40,
        ),
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(color: AppColors.sectionBorder),
                right: BorderSide(color: AppColors.sectionBorder),
                left: BorderSide(color: AppColors.sectionBorder)),
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
              style: TextStyle(color: AppColors.extraLight, fontSize: 12),
            )
          ],
        ));
  }
}
