import 'package:flutter/material.dart';
import 'package:notes/presentation/resourses/color_manager.dart';
import 'package:notes/presentation/resourses/font_manager.dart';
import 'package:notes/presentation/resourses/strings_manager.dart';
import 'package:notes/presentation/resourses/styles_manager.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.settings,
          style: getBoldTextStyle(
              color: ColorManager.black, fontSize: FontSizeManager.s20),
        ),
      ),
    );
  }
}
