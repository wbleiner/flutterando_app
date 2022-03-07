import 'package:flutter/material.dart';

class LevelBar extends StatelessWidget {
  const LevelBar({
    Key? key,
    required this.widthBar,
    required this.knowledgeLevel,
  }) : super(key: key);

  final double widthBar;
  final double knowledgeLevel;

  @override
  Widget build(BuildContext context) {
    final _knowledgeLevelBar = widthBar * knowledgeLevel;
    return Stack(
      children: [
        Container(
          width: widthBar,
          height: 10,
          decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.circular(20)),
        ),
        Container(
          width: _knowledgeLevelBar,
          height: 10,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ],
    );
  }
}
