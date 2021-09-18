import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:summer_iti_getx/controllers/counter_controller.dart';
import 'package:summer_iti_getx/views/NextScreen.dart';

class MyHomePage extends StatelessWidget {
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Press the button to increment Counter'),
            Obx(() => Text('${counterController.count.value}')),
            Obx(() => Text('${counterController.name.value}')),
            ElevatedButton(
              child: Text("Go Next"),
              onPressed: () {
                Get.to(NextScreen());
              },
            ), ElevatedButton(
              child: Text("Show Snackbar"),
              onPressed: () {
                Get.showSnackbar(GetBar(title: 'Snackbar',
                  message: 'Snack Message',
                  duration: Duration(milliseconds: 1200),));
              },
            ), ElevatedButton(
              child: Text("Show Dilaog"),
              onPressed: () {
                Get.defaultDialog(title: 'Alert Dialog',
                    actions: [
                      TextButton(onPressed: () {}, child: Text('Ok')),
                      TextButton(onPressed: () {}, child: Text('Cancel'),)
                    ],middleText: 'Alert Dialog message',content:Form(child: Column(children: [
                      TextFormField(decoration: InputDecoration(labelText: 'Username'),)
                    ],),) );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
