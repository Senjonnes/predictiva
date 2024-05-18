import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:predictiva/api/api_constant.dart';
import 'package:predictiva/api/api_response.dart';
import 'package:predictiva/pages/home/model/portfolio_model.dart';

class HomeService {
  Future<AppResponse<PortfolioModel>> getPortFolio(BuildContext context) async {
    var response = await http.get(Uri.parse(portfolioUrl), headers: {
      "Connection": "keep-alive",
      "Content-type": "application/json"
    });
    if (response.statusCode == 200) {
      return AppResponse<PortfolioModel>(
        true,
        response.statusCode,
        jsonDecode(response.body),
        PortfolioModel.fromJson(jsonDecode(response.body)),
      );
    }
    return AppResponse(false, response.statusCode, jsonDecode(response.body),
        jsonDecode(response.body));
  }
}
