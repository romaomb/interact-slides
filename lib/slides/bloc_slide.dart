import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/res/images.dart';
import 'package:interact_slides/widgets/background_lines.dart';

class BlocSlide extends SlideBase {
  @override
  Widget background() => const BackgroundLines();

  @override
  Widget title(BuildContext context) => SlideTitle('Business Logic Components');

  @override
  Widget body(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Image.asset(Images.bloc),
        ],
      )
    );
  }
}