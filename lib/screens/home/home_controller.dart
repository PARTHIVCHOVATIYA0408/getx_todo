import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_todo/model/todo_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  List<TodoModel> appData = [];
  SharedPreferences? sharedPreferences;

  @override
  void onInit() {
    // TODO: implement onInit
    getInstance();
    super.onInit();
  }

  getInstance() async {
    sharedPreferences = await SharedPreferences.getInstance();

    getToDoData();
  }

  getToDoData() {
    if (sharedPreferences!.containsKey("toDoData")) {
      dynamic data = sharedPreferences!.getString("toDoData");
      appData = (jsonDecode(data) as List?)!
          .map(
            (dynamic e) => TodoModel.fromJson(e),
          )
          .toList();
    }
  }
}
