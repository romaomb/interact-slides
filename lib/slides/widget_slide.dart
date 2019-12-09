import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/widgets/background_lines.dart';

class WidgetSlide extends SlideBase {
  @override
  Widget background() => BackgroundLines();

  @override
  Widget title(BuildContext context) => SlideTitle('Everything is a Widget');

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}
