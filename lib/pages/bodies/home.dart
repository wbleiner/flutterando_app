import 'package:flutter/material.dart';
import 'package:flutterando_app/widgets/exercise_card.dart';

import '../../data/dummy_data.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final data = activtyList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        ExerciseCard(
          title: 'Animações',
          image: 'assets/images/icons/Icon awesome-running.png',
          content:
              'Estudos sobre animações implicitas e controladas, contendo 4 exercícios e 2 estudos',
          exercise: data[0],
          githubUrl: 'https://github.com/wbleiner/animations-repositories',
        ),
        ExerciseCard(
          title: 'Leitura de Mockup',
          image: 'assets/images/icons/Icon awesome-glasses.png',
          content:
              'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
          exercise: data[1],
          githubUrl: 'https://github.com/wbleiner/mockup_1',
        ),
        ExerciseCard(
          title: 'Playground',
          image: 'assets/images/icons/Icon material-toys.png',
          content: 'Ambiente destinado a testes e estudos em geral',
          exercise: data[2],
          githubUrl: '',
        ),
      ],
    );
  }
}
