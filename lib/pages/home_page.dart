import 'package:flutter/material.dart';
import 'package:flutterando_app/pages/bodies/home.dart';
import 'package:flutterando_app/pages/bodies/profile.dart';
import 'package:flutterando_app/pages/bodies/repositories.dart';
import 'package:flutterando_app/providers/theme_provider.dart';
import 'package:flutterando_app/theme/colors_custom.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final PageController _pageController;
  late int _indexPage;

  final titlePage = [
    'Atividades',
    'Repositórios',
    'Sobre o dev',
  ];
  @override
  void initState() {
    _pageController = PageController();
    _indexPage = 0;
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          IconButton(
            icon: const Icon(Icons.bedtime),
            onPressed: () {
              themeProvider.changeTheme();
            },
          ),
        ],
        title: ListTile(
          horizontalTitleGap: 2,
          contentPadding: const EdgeInsets.all(0),
          leading: Image.asset(
            'assets/images/flutterando-logo.png',
            scale: 8,
          ),
          title: Text(
            titlePage[_indexPage],
            style: Theme.of(context).textTheme.headline1,
          ),
          subtitle: Text(
            'Flutterando Masterclass',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          indicatorColor: Theme.of(context).cardColor,
          labelTextStyle: MaterialStateTextStyle.resolveWith(
            (_) => Theme.of(context).textTheme.labelMedium as TextStyle,
          ),
        ),
        child: NavigationBar(
          selectedIndex: _indexPage,
          onDestinationSelected: (index) {
            setState(() {
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            });
          },
          destinations: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(
                    width: 1,
                    color: ColorsCustom.description,
                  ),
                ),
              ),
              child: NavigationDestination(
                icon: Image.asset(
                  'assets/images/icons/Icon feather-target.png',
                  color: Theme.of(context).highlightColor,
                ),
                label: 'Atividades',
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(
                    width: 1,
                    color: ColorsCustom.description,
                  ),
                ),
              ),
              child: NavigationDestination(
                icon: Image.asset(
                  'assets/images/icons/github_logo.png',
                  color: Theme.of(context).highlightColor,
                ),
                label: 'Repositórios',
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: const NavigationDestination(
                icon: Icon(
                  Icons.person,
                  size: 35,
                ),
                label: 'Sobre o dev',
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _indexPage = index;
          });
        },
        children: [
          Home(),
          const Repositories(),
          const Profile(),
        ],
      ),
    );
  }
}
