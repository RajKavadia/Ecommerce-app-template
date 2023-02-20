import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color red700 = fromHex('#db3022');

  static Color red900 = fromHex('#bf180e');

  static Color gray5005e = fromHex('#5e9b9b9b');

  static Color red8003f = fromHex('#3fd32525');

  static Color green600 = fromHex('#2aa952');

  static Color gray50 = fromHex('#f9f9f9');

  static Color black9001e = fromHex('#1e000000');

  static Color black900Ba = fromHex('#ba000000');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color black90023 = fromHex('#23000000');

  static Color gray50063 = fromHex('#639b9b9b');

  static Color black90000 = fromHex('#00000000');

  static Color red70028 = fromHex('#28db3022');

  static Color black900 = fromHex('#000000');

  static Color black90060 = fromHex('#60000000');

  static Color gray900A2 = fromHex('#a2222222');

  static Color deepOrangeA700 = fromHex('#f01f0e');

  static Color black90028 = fromHex('#28000000');

  static Color whiteA70038 = fromHex('#38ffffff');

  static Color blueGray900 = fromHex('#2c2c2c');

  static Color redA700 = fromHex('#eb001b');

  static Color green60072 = fromHex('#722aa952');

  static Color whiteA7006c = fromHex('#6cffffff');

  static Color gray500 = fromHex('#9b9b9b');

  static Color gray800 = fromHex('#4f4f4f');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color gray900 = fromHex('#222222');

  static Color gray90001 = fromHex('#350e12');

  static Color black9000c = fromHex('#0c000000');

  static Color gray200 = fromHex('#f0f0f0');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color gray50071 = fromHex('#719b9b9b');

  static Color bluegray400 = fromHex('#888888');

  static Color black90019 = fromHex('#19000000');

  static Color gray40000 = fromHex('#00c4c4c4');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
