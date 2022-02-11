import 'package:flutter/material.dart';

class ButtonCustomWidget extends StatelessWidget {

  void Function()? ontap;
  final String? txet;
  final Color? backgroundColor;
  final Color? textColor;
  final double? textsize;


  ButtonCustomWidget({
    required this.ontap,
    this.txet,
    this.backgroundColor,
    this.textColor,
    this.textsize,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: ontap,
      child: Text(txet!,style: TextStyle
        (color: textColor,fontSize: textsize
      ),),
      minWidth: MediaQuery.of(context).size.width-200,
      height: 50,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),

    );
  }
}
