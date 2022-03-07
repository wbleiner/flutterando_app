import 'package:flutter/material.dart';
import 'package:flutterando_app/activitys/animations/controlled_animations/pages/exercicio_1.dart';
import 'package:flutterando_app/activitys/animations/controlled_animations/pages/exercicio_2.dart';
import 'package:flutterando_app/pages/details_page.dart';
import 'package:flutterando_app/pages/home_page.dart';
import 'package:flutterando_app/pages/splash_page.dart';
import 'package:flutterando_app/providers/theme_provider.dart';
import 'package:flutterando_app/routes/app_routes.dart';
import 'package:flutterando_app/theme/theme_custom.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutterando App',
      theme: themeProvider.isDark ? ThemeCustom.dark : ThemeCustom.light,
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.home: (_) => HomePage(),
        AppRoutes.splash: (_) => const SplashPage(),
        AppRoutes.detailsPage: (_) => const DetailsPage(),
        AppRoutes.controlledAnimation1: (_) => const Exercicio1(),
        AppRoutes.controlledAnimation2: (_) => const Exercicio2(),
      },
    );
  }
}
