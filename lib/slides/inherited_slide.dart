import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/res/images.dart';
import 'package:interact_slides/showcase/inherited/inherited_routes.dart';
import 'package:interact_slides/showcase/inherited/test.dart';
import 'package:interact_slides/widgets/background_lines.dart';

class InheritedSlide extends SlideBase {
  @override
  Widget background() => const BackgroundLines();

  @override
  Widget title(BuildContext context) => SlideTitle('InheritedWidget');

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 50.0),
      child: Row(
        children: [
          Image.asset(Images.passing),
          Container(
            width: 350.0,
            child: ClipRect(
              child: Provider(
                data: AppState(0),
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  initialRoute: '/firstRoute',
                  routes: {
                    '/firstRoute': (_) => FirstRoute(),
                    '/secondRoute': (_) => SecondRoute(),
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
