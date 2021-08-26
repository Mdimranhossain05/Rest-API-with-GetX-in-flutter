import 'package:api_fetching_project/productsModel.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class getController extends GetxController {
  var stringResponse = "Default".obs;
  var listResponse = [].obs;
  Rx<Products> product = Products().obs;

  Future fetchData() async {
    Fluttertoast.showToast(msg: "Starting...");
    http.Response response1 = await http
        .get(Uri.parse("https://www.thegrowingdeveloper.org/apiview?id=1"));
    http.Response response2 = await http
        .get(Uri.parse("https://www.thegrowingdeveloper.org/apiview?id=4"));
    Fluttertoast.showToast(msg: "Data Fetching...");
    if (response1.statusCode == 200 && response2.statusCode == 200) {
      stringResponse.value = response1.body;
      listResponse.value = json.decode(response2.body);

      Fluttertoast.showToast(msg: "response_code: 200");
    } else {
      Fluttertoast.showToast(msg: "Data Not fetched");
    }
    Fluttertoast.showToast(msg: stringResponse.toString());
  }

  Future fetchJson() async {
    http.Response response3 = await http.get(Uri.parse("https://www.thegrowingdeveloper.org/apiview?id=2"));
    if (response3.statusCode == 200) {
      var jsonString = response3.body;
      product.value = productsFromJson(jsonString);



    } else {
      Fluttertoast.showToast(msg: "Json fetching failed");
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    fetchData();
    fetchJson();
    super.onInit();
  }
}
