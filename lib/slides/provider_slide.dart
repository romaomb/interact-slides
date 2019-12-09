import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';

class ProviderSlide extends SlideBase {
  @override
  Widget background() => Container(color: Colors.white);

  @override
  Widget title(BuildContext context) => SlideTitle('Provider');

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}