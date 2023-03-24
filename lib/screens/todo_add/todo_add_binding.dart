import 'package:get/get.dart';
import 'package:getx_todo/screens/todo_add/todo_add_controller.dart';

class TodoBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<ToDoController>(ToDoController());
  }
}
