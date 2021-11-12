import 'package:flutter/cupertino.dart';

Color kBackgroundColor = const Color(0xff253332);
Color kTextColor = const Color(0xffb0ffa3);
Color kTitlecColor = const Color(0xffffffff);
Shader kGradientTextColor = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xffBAFF80),
      Color(0xffCFFF81),
    ]).createShader(const Rect.fromLTRB(0, 20, 0, 20));
FontWeight kFontWeight = FontWeight.w700;
double kAppBarFontSize = 25;
