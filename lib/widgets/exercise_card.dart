import 'package:flutter/material.dart';
import 'package:flutterando_app/models/exercise_model.dart';
import 'package:flutterando_app/routes/app_routes.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../providers/theme_provider.dart';

class ExerciseCard extends StatefulWidget {
  final String title;
  final String content;
  final String image;
  final String githubUrl;

  final ExerciseModel exercise;

  const ExerciseCard({
    Key? key,
    required this.title,
    required this.content,
    required this.image,
    required this.exercise,
    required this.githubUrl,
  }) : super(key: key);

  @override
  State<ExerciseCard> createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ListTile(
            horizontalTitleGap: 5,
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: Image.asset(
                widget.image,
                color: Theme.of(context).highlightColor,
              ),
            ),
            title: Text(
              widget.title,
              style: Theme.of(context).textTheme.headline2,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Exercicios: ',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  widget.exercise.exerciseAddressList.length.toString(),
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              widget.content,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          ListTile(
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.all(
              20,
            ),
            leading: Image.asset(
              'assets/images/github_logo.png',
              color: themeProvider.isDark ? Colors.white : Colors.black,
              width: 30,
              height: 30,
            ),
            title: TextButton(
              child: Text(
                'Acessar código fonte',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              onPressed: () async {
                if (await canLaunch(widget.githubUrl)) {
                  await launch(widget.githubUrl);
                } else {
                  throw 'não foi lançado';
                }
              },
              style: TextButton.styleFrom(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(
                  left: 0,
                ),
              ),
            ),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.detailsPage,
                  arguments: widget.exercise,
                );
              },
              child: const Text('Ver mais'),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: Theme.of(context).textTheme.button,
              ),
            ),
          )
        ],
      ),
    );
  }
}
