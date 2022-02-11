import 'package:flutter/material.dart';

class TextFiledWidget extends StatelessWidget {
  String? text;
  String? hint;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? inputType;
  final Widget? icon;
  final Color? colortxet;
  final Color? colorhint;
  final Color colorborder;
  final int? maxlin;
  bool enable=false;

  TextFiledWidget({
    this.text,
    this.icon,
    this.controller,
    required this.enable,
    this.inputType,
    this.validator,
    this.hint,
    this.colorhint,
    this.colortxet,
    this.maxlin,
    required this.colorborder
  });
  @override
  Widget build(BuildContext context) {
    return   TextFormField(
      keyboardType: inputType,
      controller: controller,
      obscureText: enable,
      validator: validator,
      maxLines:maxlin ,

      decoration: InputDecoration(
        suffixIcon: icon,
        hintText: hint!,
        hintStyle: TextStyle(color: colorhint),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: colorborder)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.red)
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            gapPadding: 60,
            borderSide: BorderSide(color: colorborder)
        ),


      ),
    );
  }
}
