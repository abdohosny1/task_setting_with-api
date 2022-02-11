import 'package:task_setting_with_api/constant/colorManager/colorManager.dart';
import 'package:task_setting_with_api/constant/routes/routes_manager.dart';
import 'package:task_setting_with_api/features/firstScreen/view.dart';
import 'package:task_setting_with_api/features/secondScreen/units/clinc.dart';
import 'package:task_setting_with_api/features/secondScreen/units/on_the_spot.dart';
import 'package:task_setting_with_api/features/secondScreen/units/video_call.dart';
import 'package:task_setting_with_api/features/secondScreen/units/voice_call.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondView extends StatefulWidget {
  SecondView({Key? key}) : super(key: key);

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(
        children: [
          Column(
            children: [
              ClincView(),
              VideoCallView(),
              VoiceCallView(),
              OnTheSpotView(),
            ],
          )
        ],
      ),
    );
  }
}
