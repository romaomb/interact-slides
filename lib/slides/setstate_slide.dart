import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/res/images.dart';
import 'package:interact_slides/showcase/setstate/setstate_counter.dart';
import 'package:interact_slides/widgets/background_lines.dart';

class SetStateSlide extends SlideBase {
  @override
  Widget background() => const BackgroundLines();

  @override
  Widget title(BuildContext context) => SlideTitle('O milagroso: State.setState');

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(Images.setState),
          Container(width: 350.0, child: SetStateCounter()),
        ],
      ),
    );
  }
}
