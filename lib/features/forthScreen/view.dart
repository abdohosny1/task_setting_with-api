import 'package:task_setting_with_api/constant/colorManager/colorManager.dart';
import 'package:task_setting_with_api/constant/routes/routes_manager.dart';
import 'package:task_setting_with_api/features/firstScreen/view.dart';
import 'package:task_setting_with_api/features/forthScreen/units/units/pharm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForthView extends StatefulWidget {
  ForthView({Key? key}) : super(key: key);

  @override
  State<ForthView> createState() => _ForthViewState();
}

class _ForthViewState extends State<ForthView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.blue,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: ColorManager.blue,
        ),
        title: Text(
          "Settings",
          style: TextStyle(
            color: ColorManager.white,
            fontSize: 16,
            fontFamily: "Poppins",
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            MagicRoute.navigatorAndPopUntilFirstPage(FirstView());

          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body:ForthViewUnits(),
    );
  }
}
