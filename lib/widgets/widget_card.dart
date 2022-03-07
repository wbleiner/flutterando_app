import 'package:flutter/material.dart';
import 'package:flutterando_app/models/activity_model.dart';
import 'package:flutterando_app/routes/app_routes.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';

class WidgetCard extends StatelessWidget {
  const WidgetCard({
    Key? key,
    required this.title,
    required this.content,
    required this.image,
    required this.activity,
  }) : super(key: key);

  final String title;
  final String content;
  final String image;

  final ActivityModel activity;

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
                image,
                color: Theme.of(context).highlightColor,
              ),
            ),
            title: Text(
              title,
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
                  activity.activityAddressList.length.toString(),
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              content,
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
              onPressed: () {},
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
                  arguments: activity,
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
