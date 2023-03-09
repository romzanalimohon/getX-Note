import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorials'),
      ),
      body: Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.snackbar('chunchunmaru', 'it is a sword',
          icon: Icon(Icons.add),
            onTap: (snap){

            },
              mainButton: TextButton(onPressed: (){}, child: Text('click')),
            backgroundColor: Colors.blue,
            snackPosition: SnackPosition.BOTTOM
          );
        },
      ),
    );
  }
}
