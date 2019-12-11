import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/widgets/background_lines.dart';

class ProviderSlide extends SlideBase {
  @override
  Widget background() => const BackgroundLines();

  @override
  Widget title(BuildContext context) => SlideTitle('Package Provider');

  @override
  Widget body(BuildContext context) {
    return Row(
      children: [
        Topic('')
      ],
    );
  }
}