import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/res/gifs.dart';
import 'package:interact_slides/res/images.dart';
import 'package:interact_slides/res/styles.dart';

class ThanksSlide extends SlideBase {
  @override
  Widget background() => Container(color: Colors.white);

  @override
  Widget title(BuildContext context) => SlideTitle('Isso é tudo pessoal!');

  @override
  Widget body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TopicBox(
              flex: 0,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 30.0),
              topics: [
                Topic(
                  'Contatos:',
                  subtopics: [
                    Subtopic(text: 'LinkedIn: @romaomb'),
                    Subtopic(text: 'Github: @romaomb'),
                    Subtopic(text: 'Facebook: @romaomb'),
                    Subtopic(text: 'Instagram: @romaomb'),
                    Subtopic(text: 'Twitter: @romaomb'),
                  ],
                ),
                TopicSpace(),
                Topic(
                  'flutter_slides',
                  subtopics: [
                    Subtopic(text: 'https://pub.dev/packages/flutter_slides'),
                  ],
                ),
                TopicSpace(),
              ],
            ),
            SizedBox(
              width: 200.0,
            ),
            Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  child: Image.asset(Gifs.ban),
                ),
                SizedBox(height: 20.0),
                Text('Até o próximo reencontro!', style: Styles.textCaption)
              ],
            ),
          ],
        ),
        SizedBox(height: 40.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(Images.link, scale: 2.0),
            SizedBox(width: 60.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Topic(
                  'Link para palestra:',
                  subtopics: [
                    Subtopic(
                      text: 'https://github.com/romaomb/interact-slides',
                    ),
                  ],
                ),
                TopicSpace(space: 20.0),
                Topic(
                  'Como rodar?',
                  subtopics: [
                    Subtopic(text: 'Instalar o Flutter'),
                    Subtopic(text: 'Ativar modo desktop'),
                    Subtopic(text: 'Rodar'),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
