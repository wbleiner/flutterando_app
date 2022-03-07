import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterando_app/routes/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _duration = const Duration(seconds: 2);
  late double size;
  late double _factor;
  late double _opacity;

  @override
  void initState() {
    _factor = 0;
    size = 10;
    _opacity = 0;

    Future.delayed(
      const Duration(milliseconds: 100),
      (() {
        setState(() {
          _factor = 1;
          size = 60;
          _opacity = 1;
        });
      }),
    );
    Future.delayed(
      const Duration(seconds: 5),
      (() {
        setState(() {
          Navigator.of(context).pushNamedAndRemoveUntil(
              AppRoutes.home, (Route<dynamic> route) => false);
        });
      }),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: _duration,
              curve: Curves.easeIn,
              width: size,
              height: size,
              child: Image.asset(
                'assets/images/flutterando-logo.png',
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedOpacity(
                    opacity: _opacity,
                    duration: _duration,
                    child: const Text(
                      'flutterando',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  AnimatedAlign(
                    widthFactor: _factor,
                    duration: _duration,
                    alignment: Alignment.center,
                    curve: Curves.elasticOut,
                    child: const Text(
                      'Masterclass',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
