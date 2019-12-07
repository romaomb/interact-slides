import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';

class WelcomeSlide extends SlideBase {
  @override
  Widget background() => Container(color: Colors.red);

  @override
  String title() => "Welcome";

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}