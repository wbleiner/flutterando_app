import 'package:flutter/material.dart';
import 'package:flutterando_app/activitys/animations/controlled_animations/data/dummy_data.dart';

import '../components/ExpansionTileCustom.dart';

class Exercicio2 extends StatefulWidget {
  const Exercicio2({Key? key}) : super(key: key);

  @override
  _Exercicio2State createState() => _Exercicio2State();
}

class _Exercicio2State extends State<Exercicio2> {
  final data = dummyData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Exercicio 2',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => ExpansionTileCustom(
          title: data[index].title,
          content: data[index].content,
        ),
      ),
    );
  }
}
