import 'package:task_setting_with_api/constant/colorManager/colorManager.dart';
import 'package:task_setting_with_api/features/secondScreen/units/text_filed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'button_widget.dart';

class ThirdViewUnits extends StatefulWidget {
  const ThirdViewUnits({Key? key}) : super(key: key);

  @override
  _ThirdViewUnitsState createState() => _ThirdViewUnitsState();
}

class _ThirdViewUnitsState extends State<ThirdViewUnits> {
  bool val = false;
  final items = ['day', 'One', 'Two', 'Three', 'Four'];
  String selectedValue = 'day';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Receive Request',
                      style: TextStyle(
                          color: val ? ColorManager.blue : Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins-Medium"),
                    ),
                    Transform.scale(
                      scale: 1.5,
                      transformHitTests: true,
                      child: SizedBox(
                        width: 50,
                        child: Switch(
                          trackColor:
                              MaterialStateProperty.all(ColorManager.grey2),

                          // thumb colors
                          activeColor: Colors.blue,
                          inactiveThumbColor: ColorManager.white,

                          onChanged: (value) {
                            setState(() {
                              val = value;
                            });
                          },
                          value: val,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 1,
            color: Colors.black,
            indent: 18,
            endIndent: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 18.0, right: 8, top: 8, bottom: 10),
            child: Container(
              width: double.infinity,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'discount for request',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins-Medium"),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'EGP',
                          hintStyle: TextStyle(color: ColorManager.grey),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: ColorManager.grey3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        ),
                      ))
                ],
              ),
            ),
          ),
          Divider(
            height: 1,
            color: Colors.black,
            indent: 18,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 8, top: 10),
            child: Container(
              width: double.infinity,
              height: 95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Working Time',
                    style: TextStyle(
                      fontFamily: "Poppins-Medium",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: ColorManager.grey3,
                          width: 1,
                        ),
                      ),

                      // dropdown below..
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Text('day'),
                          isExpanded: true,
                          iconSize: 30,
                          items: <String>['A', 'B', 'C', 'D'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 8),
            child: Container(
              width: double.infinity,
              height: 95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Day Shift',
                    style: TextStyle(
                      fontFamily: "Poppins-Medium",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextFiledWidget(
                          colorborder: Colors.black12,
                          enable: false,
                          hint: 'from',
                          icon: Icon(Icons.timer_outlined),
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: TextFiledWidget(
                          colorborder: Colors.black12,
                          enable: false,
                          hint: 'to',
                          icon: Icon(Icons.timer_outlined),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 8),
            child: Container(
              width: double.infinity,
              height: 95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Night Shift',
                    style: TextStyle(
                      fontFamily: "Poppins-Medium",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextFiledWidget(
                          colorborder: Colors.black12,
                          enable: false,
                          hint: 'from',
                          icon: Icon(Icons.timer_outlined),
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: TextFiledWidget(
                          colorborder: Colors.black12,
                          enable: false,
                          hint: 'to',
                          icon: Icon(Icons.timer_outlined),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 18.0, right: 8, top: 10, bottom: 10),
              child: CircleAvatar(
                backgroundColor: ColorManager.blue,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
          Divider(
            height: 1,
            color: Colors.black,
            indent: 18,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 8),
            child: Container(
              width: double.infinity,
              height: 95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Unavilability',
                    style: TextStyle(
                      fontFamily: "Poppins-Medium",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextFiledWidget(
                              colorborder: Colors.black12,
                              enable: false,
                              hint: 'Start',
                              icon: Icon(Icons.timer_outlined),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: TextFiledWidget(
                              colorborder: Colors.black12,
                              enable: false,
                              hint: 'End',
                              icon: Icon(Icons.timer_outlined),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 18.0, right: 8, top: 10, bottom: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                backgroundColor: ColorManager.blue,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              ),
            ),

          ),
          SizedBox(height: 5,),
          Align(
            alignment: Alignment.center,
            child: ButtonCustomWidget(
              ontap: () {},
              txet: 'Save Setting',
              backgroundColor: ColorManager.blue,
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
