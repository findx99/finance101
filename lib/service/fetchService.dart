

import 'dart:convert';

import 'package:finance101/models/TopFund.dart';
import 'package:finance101/models/fundModel.dart';
import 'package:http/http.dart' as http;

class fetchData {

  Future<TopFund?> fetchTopFund() async {
    var client = http.Client();
    var uri = Uri.parse("https://groww.in/v1/api/search/v1/derived/scheme?available_for_investment=true&doc_type=scheme");

    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var jsonresp = response.body;

      return TopFund.fromJson(json.decode(jsonresp));
    }
  }

  Future<FundModel?> fetchFund(id) async {
    var client = http.Client();
    var uri = Uri.parse("https://groww.in/v1/api/data/mf/web/v2/scheme/search/$id");
    print("uri: $uri");
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var jsonresp = response.body;
      print(jsonresp);
      return FundModel.fromJson(json.decode(jsonresp));
    }
  }


}