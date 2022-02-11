import 'package:task_setting_with_api/constant/responsive.dart';
import 'package:task_setting_with_api/features/firstScreen/platforms/mobile.dart';
import 'package:task_setting_with_api/features/firstScreen/platforms/tablet.dart';
import 'package:task_setting_with_api/features/firstScreen/platforms/web.dart';
import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        web: FirstViewWeb(),
        mobile: FirstViewMobile(),
        tablet: FirstViewTablet(),
      ),
    );
  }
}