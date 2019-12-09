import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

class BlocSlide extends SlideBase {
  @override
  Widget background() => Container(color: Colors.white);

  @override
  Widget title(BuildContext context) => SlideTitle('BLoC');

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}