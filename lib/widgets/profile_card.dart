import 'package:flutter/material.dart';
import 'package:flutterando_app/widgets/contact_card.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: heightScreen * 0.46,
          width: double.maxFinite,
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ContactCard(
                    imageUri: 'assets/images/icons/whatsapp.png',
                  ),
                  ContactCard(
                    imageUri: 'assets/images/icons/github-head.png',
                  ),
                  ContactCard(
                    imageUri: 'assets/images/icons/instagram.png',
                  ),
                  ContactCard(
                    imageUri: 'assets/images/icons/facebook.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
