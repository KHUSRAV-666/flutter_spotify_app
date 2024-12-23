import 'package:flutter/material.dart';
import 'package:flutter_spotify_app/core/configs/theme/app_theme.dart';
import 'package:flutter_spotify_app/presentation/spalsh/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: const SplashPage(),
    );
  }
}
