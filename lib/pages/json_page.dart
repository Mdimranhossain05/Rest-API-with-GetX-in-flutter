import 'package:api_fetching_project/get_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JsonPage extends StatelessWidget {
  const JsonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var getFetching = Get.put(getController());
    return Scaffold(
      body: Obx((){
        return Column(
            children: [
              Text("Category: "+getFetching.product.value.category.toString(),style: TextStyle(fontSize: 15,color: Colors.black),),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: getFetching.product.value.facts.length,
                    itemBuilder: (context,index){
                      return Container(
                        child: Column(
                            children: [
                              Image.network(getFetching.product.value.facts[index].imageUrl),
                              Text(getFetching.product.value.facts[index].title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text(getFetching.product.value.facts[index].description,style: TextStyle(fontSize: 11),),
                              SizedBox(height: 5,)
                            ],
                          ),

                      );
                    }),
              )
            ],
          );

      }),
    );
  }
}
