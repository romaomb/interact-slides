import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';
import 'package:interact_slides/res/colors.dart';
import 'package:interact_slides/res/gifs.dart';

class WelcomeSlide extends SlideBase {
  WelcomeSlide() : super(bodyFlex: 0);

  @override
  Widget background() {
    return Container(
      color: CustomColor.violet,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(Gifs.astronaut),
          )
        ],
      ),
    );
  }

  @override
  Widget title(BuildContext context) {
    return SlideTitle(
      "Flutterverso de Gerenciamento de Estado",
      fontSize: 72.0,
    );
  }

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}
