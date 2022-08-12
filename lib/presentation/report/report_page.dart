import 'package:flutter/material.dart';
import 'package:notes/presentation/resourses/color_manager.dart';
import 'package:notes/presentation/resourses/font_manager.dart';
import 'package:notes/presentation/resourses/strings_manager.dart';
import 'package:notes/presentation/resourses/styles_manager.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.report,
          style: getBoldTextStyle(
              color: ColorManager.black, fontSize: FontSizeManager.s20),
        ),
      ),
    );
  }
}
