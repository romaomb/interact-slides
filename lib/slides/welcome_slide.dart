import 'package:flutter/cupertino.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:flutter/material.dart';
import 'package:interact_slides/res/gifs.dart';
import 'package:interact_slides/res/images.dart';

class WelcomeSlide extends SlideBase {
  WelcomeSlide()
      : super(
          bodyFlex: 0,
          transitionType: SlideTransitionType.size,
        );

  @override
  Widget background() {
    final topicStyle = TextStyle(
      fontSize: 32.0,
      color: Colors.white,
    );

    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(Images.background, fit: BoxFit.fill),
          Container(
            padding: const EdgeInsets.only(bottom: 50.0),
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(Gifs.astronaut),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Redux', style: topicStyle),
                          SizedBox(height: 200),
                          Text('InheritedWidget', style: topicStyle),
                        ],
                      ),
                      SizedBox(width: 100.0),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 100.0),
                            child: Text('StatefulWidget', style: topicStyle),
                          ),
                          SizedBox(height: 400),
                          Text('BLoC', style: topicStyle),
                          SizedBox(height: 20),
                        ],
                      ),
                      SizedBox(width: 20.0),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Provider', style: topicStyle),
                          SizedBox(height: 100),
                          Text('setState', style: topicStyle),
                        ],
                      ),
                      SizedBox(width: 80.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget title(BuildContext context) {
    final titleStyle = TextStyle(
      fontSize: 72.0,
      color: Colors.white,
    );

    return Container(
      padding: const EdgeInsets.only(top: 80.0),
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[
          Text(
            "O Flutterverso de",
            style: titleStyle.copyWith(fontStyle: FontStyle.italic),
          ),
          SizedBox(height: 10.0),
          Text(
            "Gerenciamento de Estado",
            textAlign: TextAlign.center,
            style: titleStyle,
          ),
        ],
      ),
    );
  }

  @override
  Widget body(BuildContext context) => Container();
}
