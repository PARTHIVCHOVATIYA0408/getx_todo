import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo/screens/home/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body:
      // Obx(() => null),
      
       ListView.separated(
          itemBuilder: (context, index) => const Divider(),
          separatorBuilder: (context, index) => ListTile(
                title: Text("${HomeController.[index].title}"),
                subtitle: Text("${appData[index].description}"),
              ),
          itemCount: appData.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.to();
        },
        child: const Icon(Icons.navigate_next_sharp),
      ),
    );
  }
}
