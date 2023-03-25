import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo/screens/todo_add/todo_add_controller.dart';

class TodoAddScreen extends GetView<ToDoController> {
  const TodoAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo Add "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: controller.titleController,
              decoration: InputDecoration(
                hintText: "Title",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: controller.descriptionController,
              decoration: InputDecoration(
                hintText: "Description",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                // controller.setDataInModel();
                debugPrint('--->> ${controller.appData}');
              },
              child: const Text("ADD DATA"),
            ),
          ],
        ),
      ),
    );
  }
}
