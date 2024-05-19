// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:predictiva/public/model/app_response_status.dart';

class OrderModel {
  AppResponseStatus? status;
  OrderData? data;

  OrderModel({
    this.status,
    this.data,
  });

  OrderModel.fromJson(Map<String, dynamic> json) {
    if (json['status'] != null) {
      status = AppResponseStatus.fromJson(json['status']);
    }
    if (json['data'] != null) {
      data = OrderData.fromJson(json['data']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status'] = status;
    json['data'] = data;
    return json;
  }
}

class OrderData {
  List<Order>? orders;

  OrderData({this.orders});

  OrderData.fromJson(Map<String, dynamic> json) {
    if (json['orders'] != null) {
      orders = <Order>[];
      json['orders'].forEach((v) {
        orders!.add(Order.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['orders'] = orders;
    return json;
  }
}

class Order {
  String? symbol;
  String? type;
  String? side;
  double? quantity;
  int? creation_time;
  double? price;

  Order(
      {this.symbol,
      this.type,
      this.side,
      this.quantity,
      this.creation_time,
      this.price});

  Order.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    type = json['type'];
    side = json['side'];
    quantity = json['quantity'];
    creation_time = json['creation_time'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['symbol'] = symbol;
    json['type'] = type;
    json['side'] = side;
    json['quantity'] = quantity;
    json['creation_time'] = creation_time;
    json['price'] = price;
    return json;
  }

  static getList(List<dynamic>? json) {
    List<Map<String, dynamic>> orders =
        List<Map<String, dynamic>>.from(json ?? []);
    return List.generate(
        orders.length, (index) => Order.fromJson(orders[index]));
  }
}
