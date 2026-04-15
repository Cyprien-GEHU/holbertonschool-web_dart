import '2-util.dart';

Future<void> getUser() async {
  try {
    String res = await fetchUser();
    print(res);
  } catch (error) {
    print("error caught: $error");
  }
}
