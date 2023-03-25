import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo/model/todo_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ToDoController extends GetxController {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  SharedPreferences? sharedPreferences;
  List<TodoModel> appData = [];
  @override
  void onInit() {
    // TODO: implement onInit
    getInstance();
    super.onInit();
  }

  getInstance() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  setDataInModel() {
    appData.add(
      TodoModel(
        title: titleController.text,
        description: descriptionController.text,
      ),
    );
    setDataInfo();
  }

  getToDoData() {
    if (sharedPreferences!.containsKey("toDoData")) {
      dynamic data = sharedPreferences!.getString("toDoData");
      appData = (jsonDecode(data) as List?)!
          .map((dynamic e) => TodoModel.fromJson(e))
          .toList()
          .obs;
    }
  }

  setDataInfo() {
    sharedPreferences!.setString(
      "toDoData",
      jsonEncode(appData),
    );
    Get.back();
  }
}
