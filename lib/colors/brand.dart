import 'package:flutter/cupertino.dart';

class ColorsApp {
  static final primary = HSLColor.fromAHSL(1, 48, 0.87, 0.6).toColor();
  static final accent = HSLColor.fromAHSL(1, 167, 0.98, 0.39).toColor();
  static final success = HSLColor.fromAHSL(1, 154, 0.85, 0.37).toColor();
  static final danger = HSLColor.fromAHSL(1, 347, 0.61, 0.55).toColor();
  static final warning = HSLColor.fromAHSL(1, 42, 1, 0.68).toColor();
  static final info = HSLColor.fromAHSL(1, 199, 0.97, 0.52).toColor();
  static final z0 = fromHex('#0D1117');
  static final z1 = fromHex('#11151D');
  static final z2 = fromHex('#131821');
  static final z3 = fromHex('#141A24');
  static final textSecondary = fromHex('#9E9E9E');
  static final textPrimary = fromHex('#e1e2e2');
  static final background = ColorsApp.z0;
  
  static Color fromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}