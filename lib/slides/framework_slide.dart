import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/widgets/background_lines.dart';

class FrameworkSlide extends SlideBase {
  @override
  Widget background() => const BackgroundLines();

  @override
  Widget title(BuildContext context) => SlideTitle('Framework');

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}