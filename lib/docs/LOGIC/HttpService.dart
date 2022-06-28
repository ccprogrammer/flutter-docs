import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class HttpService {
  static HttpService _instance = new HttpService.internal();
  HttpService.internal();
  factory HttpService() => _instance;

  final LocalStorage storage = new LocalStorage('onesmile');
  Map<String, String> headers = {};
  final JsonDecoder _decoder = new JsonDecoder();
  static final _baseUrl = "https://onesmile.sinarmasland.com/api/api-v2/";
  static final _apiUrlBoarding =
      "http://onesmile.sinarmasland.com/api/onboarding-screen/page";
  static final _apiUrlAdsPopup =
      "http://onesmile.sinarmasland.com/api/onboarding-screen/popup";

  Future<dynamic> get(String desturl, {dynamic headers}) {
    dynamic requestHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      'X-Auth-Token': storage.getItem("authKey")
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

  Future getBoarding() async {
    try {
      final response = await http.get(Uri.parse(_apiUrlBoarding));
      if (response.statusCode == 200) {
        return _decoder.convert(response.body);
      } else {
        throw _decoder.convert(response.body);
      }
    } catch (e) {
      throw e;
    }
  }

  Future getPopup() async {
    try {
      final response = await http.get(Uri.parse(_apiUrlAdsPopup),
          headers: {'X-Auth-Token': storage.getItem("authKey")});
      return _decoder.convert(response.body);
    } catch (e) {
      return {
        'success': false,
        'msg': 'Tidak terhubung ke server',
        'data': e,
      };
    }
  }

  Future<dynamic> post(String desturl,
      {Map<String, String>? headers, body, encoding}) {
    if (body == null) {
      body = {};
    }

    Map<String, String> requestHeaders = {
      "Content-type": "application/json; charset=UTF-8",
      "Accept": "application/json",
      "X-Auth-Token": storage.getItem("authKey")
    };
    print(storage.getItem("authKey"));
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

  Future<http.Response> postdata(String desturl,
      {Map<String, String>? headers, body, encoding}) {
    if (body == null) {
      body = {};
    }
    Map<String, String> requestHeaders = {
      "Content-type": "application/json",
      "Accept": "application/json",
      'User-Agent':
          'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36',
      "X-Auth-Token": storage.getItem("authKey")
    };

    return http.post(Uri.parse(_baseUrl + desturl),
        body: json.encode(body), headers: requestHeaders, encoding: encoding);
  }

  void updateCookie(http.Response response) {
    String? rawCookie = response.headers['set-cookie'];
    if (rawCookie != null) {
      int index = rawCookie.indexOf(';');
      headers['cookie'] =
          (index == -1) ? rawCookie : rawCookie.substring(0, index);
    }
  }

  static Future<File> _storeFile(String url, List<int> bytes) async {
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();

    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }

  static Future<File> loadNetwork(String url) async {
    final response = await http.get(Uri.parse(url));
    final bytes = response.bodyBytes;

    return _storeFile(url, bytes);
  }
}
