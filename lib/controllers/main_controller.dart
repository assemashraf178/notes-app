import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/presentation/home/home_page.dart';
import 'package:notes/presentation/report/report_page.dart';
import 'package:notes/presentation/resourses/strings_manager.dart';
import 'package:notes/presentation/resourses/values_manager.dart';
import 'package:notes/presentation/settings/settings_page.dart';
import 'package:notes/presentation/tasks/tasks_page.dart';
import 'package:text_to_speech/text_to_speech.dart';

class MainController extends GetxController {
  final double _volume = 1; // Range: 0-1
  final double _rate = 0.9; // Range: 0-2
  final double _pitch = 1.0; // Range: 0-2
  TextToSpeech tts = TextToSpeech();

  Rx<int> selectedIndex = 0.obs;
  Rx<List<Widget>> items = Rx<List<Widget>>([
    const Icon(Icons.home, color: Colors.white, size: AppSize.s30),
    const Icon(Icons.task, color: Colors.white, size: AppSize.s30),
    const Icon(Icons.report, color: Colors.white, size: AppSize.s30),
    const Icon(Icons.settings, color: Colors.white, size: AppSize.s30),
  ]);
  Rx<List<Widget>> screens = Rx<List<Widget>>([
    const HomePage(),
    const TasksPage(),
    const ReportPage(),
    const SettingsPage(),
  ]);
  Rx<List<String>> titles = Rx<List<String>>([
    AppStrings.home,
    AppStrings.tasks,
    AppStrings.report,
    AppStrings.settings,
  ]);

  void changeScreen(int index) {
    selectedIndex.value = index;
  }

  @override
  void onInit() {
    tts.getVoiceByLang('ar').then((value) {
      for (var element in value!) {
        print(element);
      }
    });
    tts.setLanguage(AppStrings.defaultLanguage);
    tts.setPitch(_pitch);
    tts.setRate(_rate);
    tts.setVolume(_volume);
    tts.speak(AppStrings.startVoice);
    super.onInit();
  }

  @override
  void onClose() {
    tts.stop();
    super.onClose();
  }
}
