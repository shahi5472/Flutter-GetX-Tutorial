import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget getXSnackBar = Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      RaisedButton(
        onPressed: () {
          Get.snackbar('Snack Bar', 'This will be snack bar message',
              snackPosition: SnackPosition.BOTTOM);
        },
        child: Text('Show Snack Bar'),
      )
    ],
  ),
);