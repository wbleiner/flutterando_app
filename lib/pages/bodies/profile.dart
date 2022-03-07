import 'package:flutter/material.dart';

import 'package:flutterando_app/widgets/profile_card.dart';
import 'package:flutterando_app/widgets/skill_list_card.dart';
import 'package:flutterando_app/widgets/technology_list_card.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 10),
      children: [
        const ProfileCard(),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Tecnologias Favoritas',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        const SizedBox(height: 8),
        const TechnologyListCard(),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Habilidades e Competências',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        const SizedBox(height: 8),
        const SkillListCard(),
      ],
    );
  }
}
