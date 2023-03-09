import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogAlert extends StatefulWidget {
  const DialogAlert({Key? key}) : super(key: key);

  @override
  State<DialogAlert> createState() => _DialogAlertState();
}

class _DialogAlertState extends State<DialogAlert> {
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
                Get.defaultDialog(
                  title: 'delete chat',
                  titlePadding: EdgeInsets.only(top: 20),
                  middleText: 'are you sure you want to delete this chat? ',
                  confirm: TextButton(onPressed: (){
                    Navigator.pop(context);
                    Get.back();
                  },
                  child: Text('ok'),
                  ),
                  cancel: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('cancel'),)
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
