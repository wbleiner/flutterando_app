import 'package:flutter/material.dart';

import 'package:flutterando_app/exercises/mockups/components/button_tinder.dart';

class SingnInTinder extends StatelessWidget {
  const SingnInTinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFe94976),
              Color(0xFFeb6469),
              Color(0xFFed7263),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/images_mockups/logo-tinder.png',
                          color: Colors.white,
                          scale: 12,
                        ),
                        const Text(
                          'tinder',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          child: const Text(
                            'By tapping Create Account or Sign In, you agree to our Teerms. Learn how we process your data in our Privacy Policy and Cookies Policy',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const ButtonTinder(
                          image: 'assets/images/images_mockups/apple.png',
                          buttonText: 'SIGN IN WITH APPLE',
                        ),
                        const ButtonTinder(
                          image: 'assets/images/images_mockups/facebook.png',
                          buttonText: 'SIGN IN WITH FACEBOOK',
                        ),
                        const ButtonTinder(
                          image: 'assets/images/images_mockups/chat.png',
                          buttonText: 'SIGN IN WITH PHONE NUMBER',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Trouble Signing In?'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
