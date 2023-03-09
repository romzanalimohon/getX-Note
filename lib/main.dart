import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/getx_tutorial_list/bottomsheet.dart';
import 'package:getx_tutorial/getx_tutorial_list/dialog_alert.dart';
import 'package:getx_tutorial/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      //home: HomePage(),
      //home: DialogAlert(),
      home: BottomSheetApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
