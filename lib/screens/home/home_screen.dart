import 'package:Kuku/screens/home/components/home_banner.dart';
import 'package:Kuku/screens/home/components/home_header.dart';
import 'package:Kuku/screens/home/components/home_tile.dart';
import 'package:flutter/material.dart';

import 'components/index.dart';


class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              // Index(),
              HomeHeader(),
              HomeBanner(),
              HomeTile(),

            ],
          ),
        ),
      ),
    );
  }
}
