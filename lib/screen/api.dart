import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:mahabharat/screen/history_screen/videos_model.dart';
import 'package:mahabharat/services/http_ser.dart';
import 'package:mahabharat/utils/endpoint_res.dart';

class HomeScreenApi {
  static var data = [];
  static List<VideoModel> results = [];

  static Future getData({String? query}) async {
    try {
      http.Response? response = await HttpService.getApi(url: EndPointRes.apiUrl);
      if (response != null && response.statusCode == 200) {
        print(json.decode(response.body));
        results = data.map((e) => VideoModel.fromJson(e)).toList(); //Search
        if (query != null) {
          //Search
          results = results.where((element) => element.productName!.toLowerCase().contains(query.toLowerCase())).toList(); //Search
          // results = results.where((element) => element.validationMessage)
        }
        return productVideoFromJson(response.body);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return results;
    }
  }
}
