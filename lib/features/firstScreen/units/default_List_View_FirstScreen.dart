import 'package:task_setting_with_api/Widgets/default_Material_Button.dart';
import 'package:task_setting_with_api/constant/colorManager/colorManager.dart';
import 'package:task_setting_with_api/constant/routes/routes_manager.dart';
import 'package:task_setting_with_api/features/forthScreen/view.dart';
import 'package:task_setting_with_api/features/secondScreen/view.dart';
import 'package:task_setting_with_api/features/thirdScreen/view.dart';
import 'package:flutter/cupertino.dart';

class List_FirstSceen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 98.0, top: 56.0, right: 98),
          child: Text(
            "You are a...",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontSize: 31,
              color: ColorManager.blue,
            ),
          ),
        ),
        DefaultMaterialButton(
          txt: "Doctor",
          onPress: () {
            MagicRoute.navigateTo(SecondView());
          },
        ),
        DefaultMaterialButton(
          txt: "Assistant",
          onPress: () {
            MagicRoute.navigateTo(SecondView());
          },
        ),
        DefaultMaterialButton(
          txt: "Pharmacy",
          onPress: () {
            MagicRoute.navigateTo(ForthView());

          },
        ),
        DefaultMaterialButton(
          txt: "Laboratory",
          onPress: () {
            MagicRoute.navigateTo(ThirdView());

          },
        ),
        DefaultMaterialButton(
          txt: "Ray Center",
          onPress: () {
            MagicRoute.navigateTo(ThirdView());
          },
        ),
      ],
    );
  }
}
