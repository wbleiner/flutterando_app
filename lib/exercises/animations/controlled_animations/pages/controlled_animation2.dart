import 'package:flutter/material.dart';
import 'package:flutterando_app/exercises/animations/controlled_animations/data/dummy_data.dart';

import '../components/expansion_tile_custom.dart';

class ControlledAnimation2 extends StatefulWidget {
  const ControlledAnimation2({Key? key}) : super(key: key);

  @override
  _ControlledAnimation2State createState() => _ControlledAnimation2State();
}

class _ControlledAnimation2State extends State<ControlledAnimation2> {
  final data = dummyData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animações Controladas 2',
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
