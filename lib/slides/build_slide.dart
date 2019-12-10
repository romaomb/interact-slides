import 'package:flutter/material.dart';
import 'package:flutter_slides/flutter_slides.dart';
import 'package:interact_slides/res/images.dart';
import 'package:interact_slides/widgets/background_lines.dart';

class BuildSlide extends SlideBase {
  @override
  Widget background() => const BackgroundLines();

  @override
  Widget title(BuildContext context) => const SlideTitle('Mudança de Paradigma');

  @override
  Widget body(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Image.asset(Images.function, scale: 4.0,),
            Image.asset(Images.changes, scale: 1.5),
          ],
        ),
        TopicBox(
          flex: 0,
          topics: [
            Topic(
              'Defina como a UI deve ser exibida',
              subtopics: [
                Subtopic(text: 'Você não precisa se preocupar em como atualizar a tela'),
                Subtopic(text: 'Para cada estado, use essa UI'),
              ],
            ),
            TopicSpace(),
            Topic(
              'O que é estado?',
              subtopics: [
                Subtopic(text: 'Usuário não logado'),
                Subtopic(text: 'Lista de itens carregados'),
                Subtopic(text: 'Mudança de uma variável de controle'),
              ],
            ),
            TopicSpace(),
            Topic(
              'Seu widget pode ser rebuildado a qualquer instante',
              subtopics: [
                Subtopic(text: 'Novos dados serão rapidamente atualizadas'),
                Subtopic(text: 'Não significa que você deve sempre rebuildar'),
              ],
            ),
            TopicSpace(),
            Topic('Não deve existir interferência entre UIs distintas'),
          ],
        )
      ],
    );
  }
}
