import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/presentation/new_task/new_task.dart';

class NewTaskController extends GetxController {
  Rx<bool> isRecoding = false.obs;
  Rx<bool> haveRecord = true.obs;
  Rx<TimeOfDay> time = TimeOfDay.now().obs;
  Rx<TaskType> important = TaskType.important.obs;
  Rx<TaskType> notImportant = TaskType.notImportant.obs;
  Rx<TaskType> groupValue = TaskType.important.obs;
  void changeRecording() {
    isRecoding.value = !isRecoding.value;
  }

  void isHaveRecord() {
    haveRecord.value = !haveRecord.value;
  }

  void showCustomDatePicker(context) {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      cancelText: 'الغاء',
      confirmText: 'تأكيد',
      helpText: 'اختر الوقت',
      hourLabelText: 'ساعة',
      minuteLabelText: 'دقيقة',
      initialEntryMode: TimePickerEntryMode.dial,
      errorInvalidText: 'الوقت غير صحيح',
      onEntryModeChanged: (TimePickerEntryMode mode) {
        print(mode);
      },
    ).then((value) {
      if (value != null) {
        time.value = value;
      }
    }).catchError((error) {
      print(error);
    });
  }

  void changeChecked(TaskType value) {
    groupValue.value = value;
  }
}
