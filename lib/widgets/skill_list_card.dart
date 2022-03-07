import 'package:flutter/material.dart';
import 'package:flutterando_app/utils/knowledge_levels.dart';
import 'package:flutterando_app/widgets/skill.dart';

class SkillListCard extends StatelessWidget {
  const SkillListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [
              SkillCard(
                skill: 'Dart/Flutter',
                knowledgeLevel: KnowledgeLevels.high,
              ),
              SkillCard(
                skill: 'Javascript',
                knowledgeLevel: KnowledgeLevels.intermediary,
              ),
              SkillCard(
                skill: 'ReactJS',
                knowledgeLevel: KnowledgeLevels.intermediary,
              ),
              SkillCard(
                skill: 'HTML',
                knowledgeLevel: KnowledgeLevels.intermediary,
              ),
              SkillCard(
                skill: 'CSS',
                knowledgeLevel: KnowledgeLevels.intermediary,
              ),
              SkillCard(
                skill: 'Java',
                knowledgeLevel: KnowledgeLevels.intermediary,
              ),
              SkillCard(
                skill: 'C++',
                knowledgeLevel: KnowledgeLevels.intermediary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
