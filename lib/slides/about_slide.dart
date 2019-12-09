import 'package:flutter_slides/flutter_slides.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interact_slides/res/gifs.dart';
import 'package:flutter/material.dart';
import 'package:interact_slides/res/images.dart';
import 'package:interact_slides/res/styles.dart';
import 'package:interact_slides/widgets/background_lines.dart';

class AboutSlide extends SlideBase {
  @override
  Widget background() => const BackgroundLines();

  @override
  Widget title(BuildContext context) => SlideTitle('Oi, eu sou o Romão!');

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 60.0, right: 60),
            child: Column(
              children: <Widget>[
                Image.asset(Gifs.flutter),
                SizedBox(height: 20.0),
                Text('Tem um minutinho para ouvir a palavra do Flutter?', style: Styles.textCaption),
                SizedBox(height: 60.0),
                Row(
                  children: <Widget>[
                    SizedBox(width: 180.0, child: Image.asset(Images.kotlin)),
                    SizedBox(width: 20.0),
                    Icon(FontAwesomeIcons.solidHeart, size: 80.0, color: Colors.red),
                    SizedBox(width: 20.0),
                    FlutterLogo(size: 180.0),
                    SizedBox(width: 20.0),
                    Icon(FontAwesomeIcons.solidHeart, size: 80.0, color: Colors.red),
                    SizedBox(width: 20.0),
                    SizedBox(width: 180.0, child: Image.asset(Images.swift)),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Topic(
                  'Engenheiro da Computação',
                  subtopics: [
                    Subtopic(text: 'Universdade Salvador'),
                    Subtopic(text: 'Temple University'),
                  ],
                ),
                TopicSpace(space: 60),
                Topic(
                  'Engenheiro de Software @ ArcTouch',
                  subtopics: [
                    Subtopic(text: '100% Flutterista'),
                    Subtopic(text: 'Evangelista da palavra do Flutter'),
                    Subtopic(text: 'App + Plugin (Kotlin + Swift)'),
                  ],
                ),
                TopicSpace(space: 60),
                Topic(
                  'Flutter Floripa',
                  subtopics: [
                    Subtopic(text: '#1 - Meetup Flutter Floripa'),
                    Subtopic(text: 'Sábado, 14/12/2019, 14:00 - 18:30'),
                    Subtopic(text: 'Local: Celta - Parque Tecnológico Alfa, João Paulo'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
