import "dart:convert";
import "dart:io";

import "package:http/http.dart" as http;
import "package:idiot_community_club/Models/CommunityReg.dart";
import "package:idiot_community_club/utils/Status.dart";

class Api {
  static const BASE_URL = "http://localhost:8080";

  static var JSON_HEADER = {"content-type": "application/json"};

  static Future<Object> get({required String url}) async {
    try {
      Uri uri = Uri.parse("$BASE_URL$url");
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        List resBody = jsonDecode(response.body) as List;
        return Success(code: 200, response: resBody);
      } else {
        return Failure(code: 404, response: "Data Fetching Error");
      }
    } catch (e) {
      return Failure(code: 404, response: "Unkown Error");
    }
  }

  static Future<http.Response?> registerCommunity(
      {required CommunityReg data, required String uri}) async {
    http.Response? response;
    try {
      response = await http.post(Uri.parse("$BASE_URL$uri"),
          headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          },
          body: jsonEncode(data.toJson()));
    } catch (e) {
      print(e.toString());
    }
    return response;
  }
}
