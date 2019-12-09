import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

class ReduxSlide extends SlideBase {
  @override
  Widget background() => Container(color: Colors.white);

  @override
  Widget title(BuildContext context) => SlideTitle('Redux');

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}