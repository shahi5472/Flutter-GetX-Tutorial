import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget getXBottomSheet = Column(
  children: [
    RaisedButton(
      child: Text('Show Bottom Sheet'),
      onPressed: () {
        Get.bottomSheet(
          Container(
            child: Wrap(
              children: [
                ListTile(
                  leading: Icon(Icons.wb_sunny_outlined),
                  title: Text('Light mode'),
                  onTap: () {
                    Get.changeTheme(ThemeData.light());
                  },
                ),
                ListTile(
                  leading: Icon(Icons.wb_sunny),
                  title: Text('Dark mode'),
                  onTap: () {
                    Get.changeTheme(ThemeData.dark());
                  },
                ),
              ],
            ),
          ),
          // backgroundColor: Colors.white,
          // barrierColor: Colors.transparent,
          // isDismissible: false,
          // enableDrag: false,
          exitBottomSheetDuration: Duration(milliseconds: 2000),
          enterBottomSheetDuration: Duration(milliseconds: 8000),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: Colors.white,
              style: BorderStyle.solid,
              width: 4,
            ),
          ),
        );
      },
    ),
  ],
);
