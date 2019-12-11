import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/res/images.dart';
import 'package:interact_slides/widgets/background_lines.dart';

class ProviderSlide extends SlideBase {
  @override
  Widget background() => const BackgroundLines();

  @override
  Widget title(BuildContext context) => SlideTitle('Package Provider');

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: <Widget>[
              Image.asset(Images.favorite, scale: 2.5,),
            ],
          ),
          SizedBox(width: 120.0),
          Column(
            children: [
              Topic('Injeção de dependência',
                subtopics: [
                  Subtopic(text: 'Simplifica todo o boilerplate dos InheritedWidgets'),
                  Subtopic(text: 'Resolve os problemas do ScopedModel')
                ],
              ),
              TopicSpace(),
              Topic('Desenvolvido pensando em Widgets',
                subtopics: [
                  Subtopic(text: 'MultiProvider'),
                  Subtopic(text: 'ProxyProvider'),
                  Subtopic(text: 'StreamProvider'),
                ],
              ),
              TopicSpace(),
              Topic('Pacote criado pela da comunidade',
                subtopics: [
                  Subtopic(text: 'Apadrinhado pelos engenheiros do time do Flutter'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}