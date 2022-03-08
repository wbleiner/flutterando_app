import 'package:flutter/material.dart';
import 'package:flutterando_app/exercises/animations/controlled_animations/pages/controlled_animation1.dart';
import 'package:flutterando_app/exercises/animations/controlled_animations/pages/controlled_animation2.dart';
import 'package:flutterando_app/exercises/animations/implicit_animations/pages/implicit_animtion1.dart';
import 'package:flutterando_app/exercises/animations/implicit_animations/pages/implicit_animtion2.dart';
import 'package:flutterando_app/exercises/mockups/sign_in_tinder.dart';
import 'package:flutterando_app/exercises/mockups/sign_up_manage_expenses.dart';
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
        AppRoutes.home: (_) => const HomePage(),
        AppRoutes.splash: (_) => const SplashPage(),
        AppRoutes.detailsPage: (_) => const DetailsPage(),
        AppRoutes.controlledAnimation1: (_) => const ControlledAnimation1(),
        AppRoutes.controlledAnimation2: (_) => const ControlledAnimation2(),
        AppRoutes.implicitAnimation1: (_) => const ImplicitAnimation1(),
        AppRoutes.implicitAnimation2: (_) => const ImplicitAnimation2(),
        AppRoutes.mockupTinder: (_) => const SingnInTinder(),
        AppRoutes.mockupExpenses: (_) => const SignUpManageExpenses(),
      },
    );
  }
}
