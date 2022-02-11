import 'package:task_setting_with_api/constant/colorManager/colorManager.dart';
import 'package:flutter/material.dart';

class DefaultMaterialButton extends StatelessWidget {
  late String txt;
  late void Function()? onPress;

  DefaultMaterialButton({required this.txt, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 25.0, right: 25.0),
      child: MaterialButton(
        onPressed: onPress,
        child: Text(
          txt,
          style: TextStyle(
            fontFamily: "Poppins",
            color: ColorManager.blue,
            fontSize: 20,
          ),
        ),
        height: 50,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              color: ColorManager.grey,
              width: 1,
            )),
      ),
    );
  }
}
