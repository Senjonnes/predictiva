// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

class PortfolioModel {
  AppResponseStatus? status;
  PortfolioData? data;

  PortfolioModel({
    this.status,
    this.data,
  });

  PortfolioModel.fromJson(Map<String, dynamic> json) {
    if (json['status'] != null) {
      status = AppResponseStatus.fromJson(json['status']);
    }
    if (json['data'] != null) {
      data = PortfolioData.fromJson(json['data']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status'] = status;
    json['data'] = data;
    return json;
  }
}

class AppResponseStatus {
  String? msg;

  AppResponseStatus({this.msg});

  AppResponseStatus.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['msg'] = msg;
    return json;
  }
}

class PortfolioData {
  Portfolio? portfolio;

  PortfolioData({this.portfolio});

  PortfolioData.fromJson(Map<String, dynamic> json) {
    if (json['portfolio'] != null) {
      portfolio = Portfolio.fromJson(json['portfolio']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['portfolio'] = portfolio;
    return json;
  }
}

class Portfolio {
  double? balance;
  double? profit;
  double? profit_percentage;
  int? assets;

  Portfolio({this.balance, this.profit, this.profit_percentage, this.assets});

  Portfolio.fromJson(Map<String, dynamic> json) {
    balance = json['balance'];
    profit = json['profit'];
    profit_percentage = json['profit_percentage'];
    assets = json['assets'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['balance'] = balance;
    json['profit'] = profit;
    json['profit_percentage'] = profit_percentage;
    json['assets'] = assets;
    return json;
  }
}
