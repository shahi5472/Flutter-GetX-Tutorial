import 'package:flutter_getx_tutorial/student.dart';
import 'package:get/get.dart';

class MyGetXController extends GetxController {
  var student = Student(name: 'Shahi', roll: 20).obs;

  var count = 0.obs;

  void increment() {
    count++;

    student.update((student) {
      student.name = student.name.toUpperCase();
    });
  }
}
