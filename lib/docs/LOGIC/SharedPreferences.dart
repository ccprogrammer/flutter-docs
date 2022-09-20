import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

checkInstanceKey(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isKey = prefs.containsKey(key);
  return isKey;
}

setInstanceString(String key, String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(key, value);
  return value;
}

getInstanceString(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var value = prefs.getString(key);
  return jsonDecode(value);
}

setInstanceBool(String key, bool value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool(key, value);
  return value;
}

getInstanceBool(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var value = prefs.getBool(key);
  return value;
}

setInstanceInt(String key, int value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt(key, value);
  return value;
}

getInstanceInt(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var value = prefs.getInt(key);
  return value;
}

clearInstance() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.clear();
}
