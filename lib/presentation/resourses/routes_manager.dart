import 'package:flutter/material.dart';
import 'package:notes/presentation/main_layout/main_page.dart';
import 'package:notes/presentation/new_task/new_task.dart';

class RoutesManager {
  static const String home = '/home';
  static const String newTask = '/newTask';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const MainPage(),
    newTask: (context) => const NewTaskPage(),
  };
}
