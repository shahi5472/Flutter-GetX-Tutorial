import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget getXDialogWidget = Container(
  child: Center(
    child: RaisedButton(
      child: Text('Show Dialog'),
      onPressed: () {
        // Get.defaultDialog();
        Get.defaultDialog(
          title: 'GetX Dialog Demo',
          titleStyle: TextStyle(fontSize: 30),
          middleText: 'This is middle text',
          middleTextStyle: TextStyle(fontSize: 20),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 12,
              ),
              CircularProgressIndicator(),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Text('Data loading....'),
              ),
              SizedBox(
                width: 12,
              ),
            ],
          ),
          onCancel: () {},
          textCancel: 'Cancel',
          onConfirm: () {},
          textConfirm: 'Confirm',
          confirmTextColor: Colors.white,
          //backgroundColor: Colors.transparent.withOpacity(0.5),
        );
      },
    ),
  ),
);
