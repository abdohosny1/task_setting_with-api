import 'package:flutter/cupertino.dart';

class ColorManager {
  static Color blue = HexaColor.fromHex("#3354F4");
  static Color white = HexaColor.fromHex("#FFFFFF");
  static Color grey = HexaColor.fromHex("#D9D9D9");
  static Color dark_blue = HexaColor.fromHex("#3B77D8");
  static Color Light_Green = HexaColor.fromHex("#A2C5FB70");
  static Color Light_Black = HexaColor.fromHex("#777777");
  static Color Black = HexaColor.fromHex("#444444");
  static Color grey2 = HexaColor.fromHex("#EAEAEA");
  static Color grey3 = HexaColor.fromHex("#BEBEBE");
  static Color expandedCard=HexaColor.fromHex("#A2C5FB70");
}

extension HexaColor on ColorManager {
  static Color fromHex(String hexaColorString) {
    hexaColorString = hexaColorString.replaceAll("#", "");
    if (hexaColorString.length == 6) {
      hexaColorString = "FF" + hexaColorString;
    }
    return Color(int.parse(hexaColorString, radix: 16));
  }
}
