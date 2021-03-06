import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/res/images.dart';
import 'package:interact_slides/widgets/background_lines.dart';

class FrameworkSlide extends SlideBase {
  @override
  Widget background() => const BackgroundLines();

  @override
  Widget title(BuildContext context) => const SlideTitle('Como a mágica funciona...');

  @override
  Widget body(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: Image.asset(Images.rendering, fit: BoxFit.fill),
      );
}
