import 'package:flutter/material.dart';
import 'package:flutterando_app/widgets/level_bar.dart';

class SkillCard extends StatelessWidget {
  final double knowledgeLevel;
  final String skill;

  const SkillCard({
    Key? key,
    required this.knowledgeLevel,
    required this.skill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final _widthknowledgeBar = widthScreen * 0.6;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              skill,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            LevelBar(
              widthBar: _widthknowledgeBar,
              knowledgeLevel: knowledgeLevel,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
