import '4-util.dart';
import "dart:convert";

Future<double> calculateTotal() async {
  try {
    String res = await fetchUserData();
    Map<String, dynamic> json = jsonDecode(res);
    String user_id = json["id"];

    String orderData = await fetchUserOrders(user_id);
    List<dynamic> orders = jsonDecode(orderData);

    double totalPrice = 0;

    for (var element in orders) {
      String priceElement = await fetchProductPrice(element);
      double price = (jsonDecode(priceElement) as num).toDouble();
      totalPrice += price;
    }

    return totalPrice;
  } catch (error) {
    return -1;
  }
}