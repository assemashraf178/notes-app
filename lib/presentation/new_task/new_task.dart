import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:notes/controllers/new_task_controller.dart';
import 'package:notes/presentation/resourses/color_manager.dart';
import 'package:notes/presentation/resourses/styles_manager.dart';

import '../resourses/values_manager.dart';

class NewTaskPage extends StatelessWidget {
  const NewTaskPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    NewTaskController controller = Get.put(NewTaskController());
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppSize.s20),
              topRight: Radius.circular(AppSize.s20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p20),
            child: Wrap(
              runSpacing: AppSize.s26,
              spacing: AppSize.s5,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.close, size: AppSize.s30)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.check, size: AppSize.s30)),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'اسم المهمة',
                    icon: Icon(Icons.title, color: ColorManager.primary),
                  ),
                  cursorColor: ColorManager.primary,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Obx(
                      () => AvatarGlow(
                        endRadius: AppSize.s40,
                        glowColor: ColorManager.primaryLight,
                        repeat: true,
                        showTwoGlows: true,
                        animate: controller.isRecoding.value,
                        child: FloatingActionButton(
                          onPressed: () {
                            controller.changeRecording();
                            controller.isHaveRecord();
                          },
                          child: Icon(
                            !controller.isRecoding.value
                                ? Icons.mic_off
                                : Icons.mic,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSize.s10),
                    Obx(
                      () => Text(
                        controller.isRecoding.value
                            ? 'جاري التسجيل'
                            : 'اضغط لبدء التسجيل',
                      ),
                    ),
                  ],
                ),
                Obx(
                  () {
                    if (controller.haveRecord.value) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RotatedBox(
                              quarterTurns: 90,
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: const Icon(Icons.play_circle),
                              ),
                            ),
                            const SizedBox(width: AppSize.s12),
                            Expanded(
                                child: LinearProgressIndicator(
                              value: 0.7,
                              color: ColorManager.primary,
                              backgroundColor: ColorManager.primary.shade100,
                            )),
                          ],
                        ),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
                Obx(
                  () {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppPadding.p10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              controller.showCustomDatePicker(context);
                            },
                            child: const Icon(Icons.date_range),
                          ),
                          const SizedBox(width: AppSize.s20),
                          Text(
                            controller.time.value != null
                                ? '${controller.time.value.hour}:${controller.time.value.minute}'
                                : 'لم يتم اختيار التاريخ',
                            style: getBoldTextStyle(
                              color: ColorManager.primary,
                              fontSize: AppSize.s20,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Obx(
                  () => RadioListTile<TaskType>(
                    value: controller.important.value,
                    groupValue: controller.groupValue.value,
                    onChanged: (value) {
                      print(value);
                      controller.changeChecked(value!);
                    },
                    title: const Text('مهم'),
                    selectedTileColor: ColorManager.primary,
                    activeColor: ColorManager.primary,
                  ),
                ),
                Obx(
                  () => RadioListTile<TaskType>(
                    value: controller.notImportant.value,
                    groupValue: controller.groupValue.value,
                    onChanged: (value) {
                      print(value);
                      controller.changeChecked(value!);
                    },
                    title: const Text('غير مهم'),
                    selectedTileColor: ColorManager.primary,
                    activeColor: ColorManager.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum TaskType { important, notImportant }
