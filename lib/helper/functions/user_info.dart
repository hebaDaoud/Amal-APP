import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

saveUserInfo(Map<String, dynamic> userInfo) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('user_info', jsonEncode(userInfo));
}

Future<Map<String, dynamic>?> getUserInfo() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? userInfoString = prefs.getString('user_info');
  if (userInfoString != null) {
    return jsonDecode(userInfoString) as Map<String, dynamic>;
  }
  return null;
}

Future<void> clearUserInfo() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove('user_info');
}
