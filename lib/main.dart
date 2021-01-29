import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/MyGetXController.dart';
import 'package:flutter_getx_tutorial/getx_bottom_sheet_widget.dart';
import 'package:flutter_getx_tutorial/getx_dialog_widget.dart';
import 'package:flutter_getx_tutorial/getx_snackbar_widget.dart';
import 'package:flutter_getx_tutorial/route_navigation.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyGetXController myGetXController = Get.put(MyGetXController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX'),
        ),
        body: Container(
          child: Column(
            children: [
              getXSnackBar,
              getXDialogWidget,
              getXBottomSheet,
              RaisedButton(
                onPressed: () async {
                  //Get.off(RouteNavigation());
                  var data = await Get.to(
                    RouteNavigation(),
                    arguments: 'Main Dart File',
                    fullscreenDialog: false,
                    transition: Transition.zoom,
                    // duration: Duration(milliseconds: 4000),
                    // curve: Curves.bounceInOut,
                  );
                  // Get.offAll(page)
                  print('Back with value : $data');
                },
                child: Text('Navigation'),
              ),
              Obx(() => Text(
                  '${myGetXController.count} ${myGetXController.student.value.name}')),
              RaisedButton(
                onPressed: () => myGetXController.increment(),
                child: Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
