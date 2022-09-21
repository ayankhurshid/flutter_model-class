import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/homeController.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  HomeController controller = Get.put(HomeController());

  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: nameController,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  controller.storeData(nameController.text);
                },
                child: const Text('submit')),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Obx(() => Text(controller.homePageModel.name.value)),
          )
        ],
      ),
    );
  }
}
