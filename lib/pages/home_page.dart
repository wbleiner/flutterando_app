import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: Image.asset(
            'assets/images/flutterando-logo.png',
            scale: 8,
          ),
          title: const Text('Atividades'),
          subtitle: const Text('Flutterando Masterclass'),
          trailing: IconButton(
            icon: const Icon(Icons.bedtime),
            onPressed: () {},
          ),
        ),
      ),
      body: ListView(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.run_circle,
                    color: Theme.of(context).primaryColor,
                    size: 40,
                  ),
                  title: Text('Animações'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Exercicios: ',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const Text(
                        '4',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Estudos sobre animações implicitas e controladas, contendo 4 exercícios e 2 estudos',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(
                    20,
                  ),
                  leading: Image.asset(
                    'assets/images/github_logo.png',
                  ),
                  title: const Text('Acessar código fonte'),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text('Ver mais'),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
