import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static getApi({required String url}) {
    try {
      if (kDebugMode) {
        print('Url : ========================= >>>>>>  $url');
      }
      return http.get(Uri.parse(url));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
