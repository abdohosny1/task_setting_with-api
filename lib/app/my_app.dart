
import 'package:flutter/material.dart';
import 'package:task_setting_with_api/constant/routes/routes_manager.dart';
import 'package:task_setting_with_api/features/firstScreen/view.dart';

class MyApp extends StatelessWidget {
  MyApp._internal();

  static final MyApp instance = MyApp._internal();

  factory MyApp() => instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      navigatorKey: myNav,
      home: FirstView(),
    );
  }
}
