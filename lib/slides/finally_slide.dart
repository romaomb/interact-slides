import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/res/gifs.dart';
import 'package:interact_slides/widgets/background_lines.dart';

class FinallySlide extends SlideBase {
  @override
  Widget background() => const BackgroundLines();

  @override
  Widget title(BuildContext context) => SlideTitle('Possibilidades para os Astronautas');

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset(
              Gifs.keys,
              scale: 0.5,
            ),
          ),
          SizedBox(width: 120.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Topic(
                'Desenvolvedores Flutter vem de todos os backgrounds',
                subtopics: [
                  Subtopic(text: 'Muitos devs replicando os padrões já conhecidos'),
                  Subtopic(text: 'Ecossistema não para de crescer'),
                  Subtopic(text: 'BLoC, Redux, Mobx, ValueNotifier, Vanilla, MVI...'),
                ],
              ),
              TopicSpace(),
              Topic('A versatilidade do framework ajuda bastante, mas...',
                subtopics: [
                  Subtopic(text: 'Não lutar contra o framework'),
                  Subtopic(text: 'Problemas futuros')
                ],
              ),
              TopicSpace(),
              Topic('Nunca esqueça que o objetivo é ajudar',
                subtopics: [
                  Subtopic(text: 'Deixar seu código mais limpo e legível'),
                  Subtopic(text: 'Ser mais fácil de dar manutenção'),
                  Subtopic(text: 'Além de facilitar os testes automatizados'),
                ],
              ),
              TopicSpace(),
              Topic('Uma vez fora da nave, fica mais complicado de voltar.')
            ],
          )
        ],
      ),
    );
  }
}
