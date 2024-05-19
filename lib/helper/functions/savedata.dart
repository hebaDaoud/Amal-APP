import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';


Future<void> saveDataWithKey(Map<String, String> mapData, String key) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final jsonString = json.encode(mapData);
  await prefs.setString(key, jsonString);
}


Future<Map<String, String>> getDataWithKey(String key) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final jsonString = prefs.getString(key);

  if (jsonString != null) {
    final mapData = json.decode(jsonString) as Map<String, dynamic>;
    final mapOfString =
        mapData.map((key, value) => MapEntry(key, value.toString()));
    return mapOfString;
  } else {
    return {};
  }
}


Future<void> deleteDataWithKey(String key) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove(key);
}
