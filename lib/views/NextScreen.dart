import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: ElevatedButton(
        child: Text('Back to Home'),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
