import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/getx_snackbar_widget.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snack Bar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX Snack Bar'),
        ),
        body: getXSnackBar,
      ),
    );
  }
}
