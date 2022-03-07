import 'package:flutter/material.dart';
import 'package:flutterando_app/widgets/widget_card.dart';

import '../../data/dummy_data.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final data = activtyList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        WidgetCard(
          title: 'Animações',
          image: 'assets/images/icons/Icon awesome-running.png',
          content:
              'Estudos sobre animações implicitas e controladas, contendo 4 exercícios e 2 estudos',
          activity: data[0],
        ),
        WidgetCard(
          title: 'Leitura de Mockup',
          image: 'assets/images/icons/Icon awesome-glasses.png',
          content:
              'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
          activity: data[0],
        ),
        WidgetCard(
          title: 'Playground',
          image: 'assets/images/icons/Icon material-toys.png',
          content: 'Ambiente destinado a testes e estudos em geral',
          activity: data[0],
        ),
      ],
    );
  }
}
