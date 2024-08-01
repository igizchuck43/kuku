import 'package:Kuku/theme.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kurinda',
      theme: AppTheme.lightTheme(context),

      // initialRoute: SplashScreen.routeName,
      // routes: routes(),
    );
  }
}

