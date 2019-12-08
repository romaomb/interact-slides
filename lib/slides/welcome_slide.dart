import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';

class WelcomeSlide extends SlideBase {
  WelcomeSlide() : super(bodyFlex: 0, titleFontSize: 72);

  @override
  Widget background() => Container(color: Colors.white);

  @override
  String title() => "Flutterverso de Gerenciamento de Estado";

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}