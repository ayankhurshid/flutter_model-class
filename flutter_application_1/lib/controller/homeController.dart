import 'package:flutter_application_1/model/homepaageModel.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  HomePageModel homePageModel = HomePageModel();

  final box = GetStorage();
  void storeData(String name) {
    box.write('name', name);
    homePageModel.name.value = box.read('name');
    print(homePageModel.name);
  }
}

//   void incrementCounter() {
//     print('The counter has be incremented');
//     homePageModel.counter.value++;
//     storeCounter();
//   }

//   void storeCounter() {
//     box.write('counterKey', homePageModel.counter);
//     print(box.read('counterKey'));
//     homePageModel.countervalue.value = box.read('counterKey');
//   }
// }
