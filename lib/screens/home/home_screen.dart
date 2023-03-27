import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo/screens/home/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  final HomeController p = Get.put(HomeController());
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(


      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: ListView.separated(
        itemCount: p.appData.length,
        itemBuilder: (context, index) => const SizedBox(),
        separatorBuilder: (context, index) => ListTile(
          title: Text('${p.appData[index].data}'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/ToDoScreen");
        },
        child: const Icon(Icons.navigate_next_sharp),
      ),
    );
  }
}
