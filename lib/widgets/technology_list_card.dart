import 'package:flutter/material.dart';
import 'package:flutterando_app/widgets/technology_card.dart';

class TechnologyListCard extends StatelessWidget {
  const TechnologyListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          TechnologyCard(
            imageUri: 'assets/images/icons/flutter.png',
            technology: 'Flutter',
          ),
          TechnologyCard(
            imageUri: 'assets/images/icons/flutter.png',
            technology: 'Flutter',
          ),
          TechnologyCard(
            imageUri: 'assets/images/icons/flutter.png',
            technology: 'Flutter',
          ),
          TechnologyCard(
            imageUri: 'assets/images/icons/flutter.png',
            technology: 'Flutter',
          ),
          TechnologyCard(
            imageUri: 'assets/images/icons/flutter.png',
            technology: 'Flutter',
          ),
          TechnologyCard(
            imageUri: 'assets/images/icons/flutter.png',
            technology: 'Flutter',
          ),
        ],
      ),
    );
  }
}
