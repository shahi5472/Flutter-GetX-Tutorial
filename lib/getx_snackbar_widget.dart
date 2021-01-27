import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget getXSnackBar = Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      RaisedButton(
        onPressed: () {
          Get.snackbar(
            'Snack Bar',
            'This will be snack bar message',
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.all(20),
            isDismissible: true,
            dismissDirection: SnackDismissDirection.HORIZONTAL,
            forwardAnimationCurve: Curves.bounceInOut,
            reverseAnimationCurve: Curves.bounceIn,
            mainButton: FlatButton(
              onPressed: () {},
              child: Text('Retry'),
            ),
          );
        },
        child: Text('Show Snack Bar'),
      )
    ],
  ),
);
