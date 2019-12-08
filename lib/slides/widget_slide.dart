import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

class WidgetSlide extends SlideBase {
  @override
  Widget background() => Container(color: Colors.white);

  @override
  String title() => 'Everything is a Widget';

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}