import 'dart:ffi';

import 'package:flutter_application_1/views/homepage.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

import '../model/homepaageModel.dart';

class HomeController extends GetxController {
  final box = GetStorage();
  HomePageModel homePageModel = HomePageModel();
  void incrementCounter() {
    print('The counter has be incremented');
    homePageModel.counter.value++;
    storeCounter();
  }

  void storeCounter() {
    box.write('counterKey', homePageModel.counter);
    print(box.read('counterKey'));
    homePageModel.countervalue.value = box.read('counterKey');
    
  }
}
