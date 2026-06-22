import 'package:flutter/material.dart';
import 'pages/login_pages.dart';

void main() {
  runApp(const SpotipyApp());
}

class SpotipyApp extends StatelessWidget {
  const SpotipyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotipy',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),

      home: const LoginPage(),
    );
  }
}