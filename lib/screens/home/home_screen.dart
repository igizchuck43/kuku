import 'package:flutter/material.dart';

import 'components/home_app_bar.dart';
import 'components/home_banner.dart';
import 'components/home_tile.dart';

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
              HomeAppBar(),
              SizedBox(height: 20,),
              HomeBanner(),
              SizedBox(height: 20,),
              HomeTile(),


            ],
          ),
        ),
      ),
    );
  }
}
