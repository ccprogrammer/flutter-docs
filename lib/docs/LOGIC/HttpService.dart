import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class HttpService {
  Map<String, String> requestHeaders = {
    'Content-type': 'application/json; charset=UTF-8',
    'Accept': 'application/json',
    'X-Auth-Token': "",
  };

  final JsonDecoder _decoder = const JsonDecoder();

  static const _baseUrl = "YOUR_BASE_URL";

  Future<dynamic> get(String endpoint) {
    return http
        .get(Uri.parse(_baseUrl + endpoint), headers: requestHeaders)
        .then((http.Response response) {
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return _decoder.convert(response.body);
    }, onError: (error) {
      throw new Exception(error.toString());
    });
  }

  Future<dynamic> post(String endpoint, {dynamic body}) {
    if (body == null) {
      body = {};
    }

    return http
        .post(
      Uri.parse(_baseUrl + endpoint),
      body: json.encode(body),
      headers: requestHeaders,
    )
        .then((http.Response response) {
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }

      return _decoder.convert(response.body);
    }, onError: (error) {
      throw new Exception(error.toString());
    });
  }
}
