import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/controllers/home_controller.dart';
import 'package:notes/presentation/resourses/color_manager.dart';
import 'package:notes/presentation/resourses/strings_manager.dart';

import '../resourses/font_manager.dart';
import '../resourses/styles_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.home,
          style: getBoldTextStyle(
              color: ColorManager.black, fontSize: FontSizeManager.s20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.pushNamed(context, RoutesManager.newTask);
          HomeController controller = Get.put(HomeController());
          controller.showCustomBottomSheet();
        },
        tooltip: AppStrings.newTask,
        child: const Icon(Icons.add),
      ),
    );
  }
}
