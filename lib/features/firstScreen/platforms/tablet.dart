import 'package:task_setting_with_api/constant/colorManager/colorManager.dart';
import 'package:task_setting_with_api/features/firstScreen/units/default_List_View_FirstScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstViewTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.white,
        ),
      ),
      body: List_FirstSceen(),
    );
  }
}
