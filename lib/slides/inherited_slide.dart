import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/res/images.dart';
import 'package:interact_slides/showcase/inherited/inherited_counter.dart';
import 'package:interact_slides/showcase/inherited/inherited_routes.dart';
import 'package:interact_slides/widgets/background_lines.dart';

class InheritedSlide extends SlideBase {
  @override
  Widget background() => const BackgroundLines();

  @override
  Widget title(BuildContext context) => SlideTitle('Lifting state up!');

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: <Widget>[
              Expanded(child: Image.asset(Images.passing)),
              Expanded(child: Image.asset(Images.basicInherited)),
            ],
          ),
          SizedBox(width: 50.0,),
          Container(
            width: 350.0,
            child: _buildInheritedShowcase(),
          ),
        ],
      ),
    );
  }

  Widget _buildInheritedShowcase() {
    return ClipRect(
      child: InheritedProvider(
        data: AppState(0),
        child: MaterialApp(
          home: FirstRoute(),
        ),
      ),
    );
  }
}
