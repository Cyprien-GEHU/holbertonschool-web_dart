import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  String res = await fetchUserData();
  Map<String, dynamic> json = jsonDecode(res);
  return "Hello ${json['username']}";
}

Future<String> loginUser() async {
  try {
    bool check = await checkCredentials();

    if (check) {
      print("There is a user: $check");
      return await greetUser();
    } else {
      print("There is a user: $check");
      return "Wrong credentials";
    }
  } catch (error) {
    return "error caught: $error";
  }
}
