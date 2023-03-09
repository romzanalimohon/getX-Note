import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetApp extends StatefulWidget {
  const BottomSheetApp({Key? key}) : super(key: key);

  @override
  State<BottomSheetApp> createState() => _BottomSheetAppState();
}

class _BottomSheetAppState extends State<BottomSheetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('alert dialog'),),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('midoriya'),
              subtitle: Text('he is the 10th holder of one-for-all'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('tokiyomi'),
              subtitle: Text('he has the power of black shadow'),
              onTap: (){
                Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white54,
                      ),

                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            title: Text('light theme'),
                            onTap: (){
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.dark_mode),
                            title: Text('dark theme'),
                            onTap: (){
                              Get.changeTheme(ThemeData.dark());
                            },
                          )
                        ],
                      ),
                    )
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

