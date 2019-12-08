import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

class InheritedSlide extends SlideBase {
  @override
  Widget background() => Container(color: Colors.white);

  @override
  String title() => 'Inherited Widget';

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}