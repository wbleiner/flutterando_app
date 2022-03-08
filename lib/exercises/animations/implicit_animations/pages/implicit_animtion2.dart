import 'package:flutter/material.dart';
import 'package:flutterando_app/exercises/animations/implicit_animations/components/expansion_tile_custom.dart';
import 'package:flutterando_app/exercises/animations/implicit_animations/data/implicit_dummy_data.dart';
import 'package:flutterando_app/exercises/animations/implicit_animations/model/implicit_data_model.dart';

class ImplicitAnimation2 extends StatefulWidget {
  const ImplicitAnimation2({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimation2> createState() => _ImplicitAnimation2State();
}

class _ImplicitAnimation2State extends State<ImplicitAnimation2> {
  List<ImplicitDataModel> data = dummyData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animações Implicitas 2',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (ctx, i) {
          return ExpansionTileCustom(
            title: data[i].title,
            content: data[i].content,
          );
        },
      ),
    );
  }
}
