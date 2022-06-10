
import 'package:shared_preferences/shared_preferences.dart';

setInstanceString(String key, String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(key, value);
  return value;
}

setInstanceBool(String key, bool value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool(key, value);
  return value;
} 

getInstanceString(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var value = prefs.getString(key);
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