import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/res/gifs.dart';
import 'package:interact_slides/widgets/background_lines.dart';

class ReduxSlide extends SlideBase {
  @override
  Widget background() => const BackgroundLines();

  @override
  Widget title(BuildContext context) => SlideTitle('Redux');

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(child: Image.asset(Gifs.redux)),
          TopicBox(
            topics: <Widget>[
              TopicSpace(space: 50.0),
              Topic(
                'Loja',
                subtopics: [
                  Subtopic(text: 'Ações entram, estados podem sair'),
                  Subtopic(text: 'Notificações de mudança de estado com Streams'),
                ],
              ),
              TopicSpace(),
              Topic('Ações == Eventos'),
              TopicSpace(),
              Topic(
                'Middleware',
                subtopics: [
                  Subtopic(text: 'Funções assíncronas (ou não) a serem executadas'),
                  Subtopic(text: 'Não geram novos estados'),
                ],
              ),
              TopicSpace(),
              Topic(
                'Reducers',
                subtopics: [
                  Subtopic(text: 'Muito semelhante ao Middleware'),
                  Subtopic(text: 'Pode ser gerado um novo estado ao final')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
