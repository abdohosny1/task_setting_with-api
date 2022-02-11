import 'dart:ffi';

import 'package:task_setting_with_api/constant/colorManager/colorManager.dart';
import 'package:task_setting_with_api/features/firstScreen/units/default_List_View_FirstScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondViewMobile extends StatelessWidget {
  var val = true;

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
      ),
      body: Column(
        children: [
          Container(
            height: 54,
            color: ColorManager.grey2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Clinic",
                  style: TextStyle(
                    color: ColorManager.blue,
                    fontSize: 16,
                    fontFamily: "Poppins-Medium",
                  ),
                ),
                DropdownButton(
                  elevation: 0,
                  items: [],
                  onChanged: ob,
                ),
                Transform.scale(
                  scale: 2,
                  child: SizedBox(
                    width: 75,
                    child: Switch(
                      trackColor: MaterialStateProperty.all(Colors.black38),

                      // thumb colors
                      activeColor: Colors.blue,
                      inactiveThumbColor: Colors.grey,

                      activeThumbImage: AssetImage('assets/thumbs_up.png'),
                      inactiveThumbImage: AssetImage('assets/thumbs_down.png'),
                      onChanged: (value) {},
                      value: val,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void ob(Object) {}
}
