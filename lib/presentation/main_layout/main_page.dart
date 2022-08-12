import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/controllers/main_controller.dart';
import 'package:notes/presentation/resourses/color_manager.dart';
import 'package:notes/presentation/resourses/font_manager.dart';
import 'package:notes/presentation/resourses/styles_manager.dart';
import 'package:notes/presentation/resourses/values_manager.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainController controller = Get.put(MainController());
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            controller.titles.value[controller.selectedIndex.value],
            style: getBoldTextStyle(
                color: ColorManager.white, fontSize: FontSizeManager.s20),
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => CurvedNavigationBar(
          items: controller.items.value,
          onTap: (index) {
            controller.changeScreen(index);
          },
          index: controller.selectedIndex.value,
          backgroundColor: ColorManager.white,
          color: ColorManager.primary,
          height: AppSize.s70,
        ),
      ),
      body: Obx(() => controller.screens.value[controller.selectedIndex.value]),
    );
  }
}
