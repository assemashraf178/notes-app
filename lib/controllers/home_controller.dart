import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/presentation/new_task/new_task.dart';
import 'package:notes/presentation/resourses/values_manager.dart';

class HomeController extends GetxController {
  void showCustomBottomSheet() {
    Get.bottomSheet(
      const NewTaskPage(),
      isScrollControlled: true,
      enableDrag: true,
      clipBehavior: Clip.antiAlias,
      ignoreSafeArea: false,
      elevation: AppSize.s50,
      isDismissible: true,
      persistent: false,
    );
    update();
  }
}
