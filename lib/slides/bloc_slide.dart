import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/res/images.dart';
import 'package:interact_slides/widgets/background_lines.dart';

class BlocSlide extends SlideBase {
  @override
  Widget background() => const BackgroundLines();

  @override
  Widget title(BuildContext context) => SlideTitle('Business Logic Components (BLoC)');

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TopicBox(
            padding: const EdgeInsets.only(left: 150.0, top: 50.0),
            topics: [
              Topic(
                'Base reativa',
                subtopics: [
                  Subtopic(text: 'Streams X rxdart'),
                  Subtopic(text: 'StreamBuilder'),
                ],
              ),
              TopicSpace(),
              Topic('Eventos entram, estados podem sair',
                subtopics: [
                  Subtopic(text: 'Sinks X Streams'),
                ],
              ),
              TopicSpace(),
              Topic(
                'BLoCs podem ser compartilhados',
                subtopics: [
                  Subtopic(text: 'BLoC para autenticação'),
                  Subtopic(text: 'BLoC para carrinho de compras'),
                  Subtopic(text: 'BLoC para coleções externas')
                ],
              ),
              TopicSpace(),
              Topic(
                'Implementações variadas',
                subtopics: [
                  Subtopic(text: 'Package: bloc'),
                  Subtopic(text: 'MVVM-like'),
                ],
              )
            ],
          ),
          Image.asset(
            Images.bloc,
            scale: 2.5,
          ),
        ],
      ),
    );
  }
}
