import 'package:api_fetching_project/pages/json_page.dart';
import 'package:api_fetching_project/pages/list_page.dart';
import 'package:api_fetching_project/pages/string_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Widget> pages = [StringPage(),ListPage(),JsonPage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue,title: Text("API Integration"),centerTitle: true,),
        body: PageView.builder(
            itemCount: pages.length,
            itemBuilder: (context,index){
              return pages[index];
            })

      ),
    );
  }
}
