import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Center(
          child: Card(
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
              width: double.maxFinite,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Theme.of(context).backgroundColor,
                    child: CircleAvatar(
                      radius: 56,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/profile/profile.jpeg',
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Wanderson Bleiner',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Apaixonado por tecnologia, formado em Ciência da computação pela PUC Goiás, estudante aplicativos mobile',
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (() {}),
                        child: Image.asset('assets/images/icons/whatsapp.png'),
                      ),
                      InkWell(
                        onTap: (() {}),
                        child:
                            Image.asset('assets/images/icons/github-head.png'),
                      ),
                      InkWell(
                        onTap: (() {}),
                        child: Image.asset('assets/images/icons/instagram.png'),
                      ),
                      InkWell(
                        onTap: (() {}),
                        child: Image.asset('assets/images/icons/facebook.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Text('Tecnologias Favoritas'),
        SizedBox(
          width: double.maxFinite,
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/images/icons/flutter.png'),
                    Text('Flutter')
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/images/icons/flutter.png'),
                    Text('Flutter')
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/images/icons/flutter.png'),
                    Text('Flutter')
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/images/icons/flutter.png'),
                    Text('Flutter')
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/images/icons/flutter.png'),
                    Text('Flutter')
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/images/icons/flutter.png'),
                    Text('Flutter')
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/images/icons/flutter.png'),
                    Text('Flutter')
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/images/icons/flutter.png'),
                    Text('Flutter')
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/images/icons/flutter.png'),
                    Text('Flutter')
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/images/icons/flutter.png'),
                    Text('Flutter')
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset('assets/images/icons/flutter.png'),
                    Text('Flutter'),
                  ],
                ),
              ),
            ],
          ),
        ),
        Text('Habilidades e Competências'),
        Card(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dart/Flutter',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: widthScreen * 0.72,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        width: widthScreen * 0.5,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
