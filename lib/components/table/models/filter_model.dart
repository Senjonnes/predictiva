class FilterModel {
  String? symbol;
  double? price;
  int? startDate;
  int? endDate;

  FilterModel({this.symbol, this.price, this.startDate, this.endDate});

  FilterModel.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    price = json['price'];
    startDate = json['startDate'];
    endDate = json['endDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['symbol'] = symbol;
    json['price'] = price;
    json['startDate'] = startDate;
    json['endDate'] = endDate;
    return json;
  }
}
