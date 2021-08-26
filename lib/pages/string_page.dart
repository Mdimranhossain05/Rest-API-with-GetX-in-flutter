import 'package:api_fetching_project/get_file.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StringPage extends StatefulWidget {
  const StringPage({Key key}) : super(key: key);

  @override
  _StringPageState createState() => _StringPageState();
}

class _StringPageState extends State<StringPage> {
  String responseString;

  var getFetching = Get.put(getController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){
        return Text(getFetching.stringResponse.value.toString());
      })
    );
  }
}
