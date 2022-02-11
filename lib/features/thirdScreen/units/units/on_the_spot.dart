import 'package:task_setting_with_api/constant/colorManager/colorManager.dart';
import 'package:task_setting_with_api/features/secondScreen/units/text_filed.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'button_widget.dart';

class OnTheSpotView extends StatefulWidget {
  const OnTheSpotView({Key? key}) : super(key: key);

  @override
  _OnTheSpotieViewState createState() => _OnTheSpotieViewState();
}

class _OnTheSpotieViewState extends State<OnTheSpotView> {
  bool _customTileExpanded = false;

  bool val = false;
  final items = ['day','One', 'Two', 'Three', 'Four'];
  String selectedValue = 'day';
  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: EdgeInsets.all(4),
      borderOnForeground: true,
      child: ExpansionTile(
        onExpansionChanged: (v){
          setState(() {
            _customTileExpanded=!_customTileExpanded;
          });
        },
        collapsedBackgroundColor: ColorManager.grey2,
        title: Text(
          'On The Spot',
          style: TextStyle(
            fontFamily: "Poppins-Medium",
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(
          _customTileExpanded
              ? FontAwesomeIcons.angleUp
              : FontAwesomeIcons.angleDown,
          size: 24,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 8),
            child: Container(
              width: double.infinity,
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Activation',
                    style: TextStyle(
                      fontFamily: "Poppins-Medium",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        val ? 'on' : 'off',
                        style: TextStyle(
                            color: val ? ColorManager.blue : ColorManager.grey2,
                            fontSize: 15,
                            fontFamily: "Poppins"),
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
          ),
          Divider(height: 1,color: Colors.black,indent: 18,endIndent: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 8,top: 8,bottom: 10),
            child: Container(
              width: double.infinity,
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pricing',
                    style: TextStyle(
                      fontFamily: "Poppins-Medium",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          'add price',
                          style: TextStyle(
                              color: ColorManager.grey2,
                              fontSize: 15,
                              fontFamily: "Poppins"),
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
                  )
                ],
              ),
            ),
          ),
          Divider(height: 1,color: Colors.black,indent: 18,endIndent: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 8,top: 10),
            child: Container(
              width: double.infinity,
              height: 95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Availiable',
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
                          items:
                          <String>['A', 'B', 'C', 'D'].map((String value) {
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
            padding: const EdgeInsets.only(left: 18.0,right: 8),
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
            padding: const EdgeInsets.only(left: 18.0,right: 8),
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
          Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 8,top: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: ColorManager.blue,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
                ButtonCustomWidget(
                  ontap: () {},
                  txet: 'Save Setting',
                  backgroundColor: ColorManager.blue,
                  textColor: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
