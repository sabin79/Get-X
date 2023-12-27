import 'dart:ffi';

import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;
  incrementCounter() {
    counter.value++;
    print(counter.value);
  } //(obs) reactive create // obeserve is there any change or not
}
