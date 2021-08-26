import 'package:api_fetching_project/get_file.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var getFetching = Get.put(getController());
    return Scaffold(body: Obx(() {
      return ListView.builder(
          itemCount: getFetching.listResponse.value.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              child: Card(
                color: Colors.lightBlue,
                child: Text(getFetching.listResponse.value[index],style: TextStyle(fontSize: 25),),
              ),
            );
          });
    }));
  }
}
