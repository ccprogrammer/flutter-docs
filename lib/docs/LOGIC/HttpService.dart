import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class HttpService {
  Map<String, String> headers = {};

  final JsonDecoder _decoder = const JsonDecoder();

  static const _baseUrl = "YOUR_BASE_URL";

  Future<dynamic> get(String desturl, {dynamic headers}) {
    dynamic requestHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      'X-Auth-Token': "",
    };

    return http
        .get(Uri.parse(_baseUrl + desturl), headers: requestHeaders)
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

  Future<dynamic> post(String desturl,
      {Map<String, String>? headers, body, encoding}) {
    if (body == null) {
      body = {};
    }

    Map<String, String> requestHeaders = {
      "Content-type": "application/json; charset=UTF-8",
      "Accept": "application/json",
      "X-Auth-Token": "",
    };
    return http
        .post(Uri.parse(_baseUrl + desturl),
            body: json.encode(body),
            headers: requestHeaders,
            encoding: encoding)
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
