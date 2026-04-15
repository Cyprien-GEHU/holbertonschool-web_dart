import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  String res = await fetchUserData();
  Map<String, dynamic> json = jsonDecode(res);
  return (json["id"]);
}