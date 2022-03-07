import 'package:flutter/material.dart';
import 'package:flutterando_app/models/activity_model.dart';
import 'package:flutterando_app/providers/theme_provider.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NumberFormat formatter = NumberFormat("00");
    final activity =
        ModalRoute.of(context)!.settings.arguments as ActivityModel;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      
      appBar: AppBar(
        title: ListTile(
          contentPadding: const EdgeInsets.all(0),
          title: Text(
            activity.title,
            style: Theme.of(context).textTheme.headline1,
          ),
          subtitle: Text(
            'Flutterando Masterclass',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bedtime),
            onPressed: () {
              themeProvider.changeTheme();
            },
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: activity.activityAddressList.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(activity.activityAddressList[index]);
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Text(
                            '${index + 1}',
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          'Exercicio ${formatter.format(index + 1)}',
                          style: Theme.of(context).textTheme.headline2,
                        )
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
