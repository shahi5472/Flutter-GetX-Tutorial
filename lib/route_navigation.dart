import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteNavigation extends StatefulWidget {
  @override
  _RouteNavigationState createState() => _RouteNavigationState();
}

class _RouteNavigationState extends State<RouteNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Navigation'),
      ),
      body: Container(
        color: Colors.teal,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(Get.arguments),
              SizedBox(
                height: 12,
              ),
              RaisedButton(
                child: Text('Back'),
                onPressed: () {
                  Get.back(result: 'This is from route navigation file');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
