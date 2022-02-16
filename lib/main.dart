import 'package:flutter/material.dart';
import 'package:flutterando_app/pages/home_page.dart';
import 'package:flutterando_app/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          headline2: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 50,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF121417),
          elevation: 0,
        ),
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF055AA3),
        primaryColorDark: const Color(0xFF055AA3),
        highlightColor: const Color(0xFFEDF4F8),
        backgroundColor: const Color(0xFF121417),
        scaffoldBackgroundColor: const Color(0xFF121417),
        cardTheme: const CardTheme(
          color: Color(0xFF172026),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          headline2: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          bodyText1: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff51565A),
          ),
          headline6: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff51565A),
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
      initialRoute: '/splash-page',
      routes: {
        '/': (context) => const HomePage(),
        '/splash-page': (context) => const SplashPage(),
      },
    );
  }
}
