import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_todo/screens/todo_add/todo_add_binding.dart';
import 'package:getx_todo/screens/todo_add/todo_add_screen.dart';
import 'package:getx_todo/utils/routes/routs_name.dart';

import '../../screens/home/home_binding.dart';
import '../../screens/home/home_screen.dart';

List<GetPage<dynamic>> routesList = [
  GetPage(name: RoutesName.homeScreen, page: () => const HomeScreen(), binding: HomeBinding()),
  GetPage(name: RoutesName.todoScreen, page: () => TodoAddScreen(),binding: TodoBinding()),
  
];