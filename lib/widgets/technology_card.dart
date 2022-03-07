import 'package:flutter/material.dart';

class TechnologyCard extends StatelessWidget {
  final String imageUri;
  final String technology;

  const TechnologyCard({
    Key? key,
    required this.imageUri,
    required this.technology,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
      child: SizedBox(
        height: 100,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              imageUri,
              color: Theme.of(context).highlightColor,
            ),
            FittedBox(
              child: Text(
                technology,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
