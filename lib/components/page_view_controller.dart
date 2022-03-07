import 'package:flutter/material.dart';
import 'package:flutterando_app/pages/bodies/home.dart';
import 'package:flutterando_app/pages/bodies/profile.dart';
import 'package:flutterando_app/pages/bodies/repositories.dart';

class PageViewControllerCustom extends StatelessWidget {
  final pageController;
  const PageViewControllerCustom({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      reverse: true,
      children: [
        Home(),
        Repositories(),
        Profile(),
      ],
    );
  }
}
