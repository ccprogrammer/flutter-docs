import 'package:shared_preferences/shared_preferences.dart';

setInstanceString(String key, String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(key, value);
  return value;
}

getInstanceString(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var value = prefs.getString(key);
  return value;
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


// EXAMPLE
 setDataInstance(msg, member) async {
    await setInstanceString('authKey', msg);
    await setInstanceString('email', member['member_email']);
    await setInstanceString("username", member['member_username']);
    await setInstanceString("nama", member['member_nm']);
    await setInstanceString("phone", member['member_phone']);
    await setInstanceInt("status", member['member_status']);
    await setInstanceInt("type", member['member_type']);
    await setInstanceBool('isLoggedIn', true);
  }
