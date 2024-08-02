import 'package:Kuku/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../utils/screen_utils.dart';



class LandingScreen extends StatelessWidget {
  static const routeName = '/landing_screen';
  const LandingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    ScreenUtils().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/imgs/kurinda_logo.png',
              fit: BoxFit.cover,
            ),
            IntroWidget()
          ],
        ),
      ),
    );
  }
}

class IntroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(
            20,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Welcome to Kurinda',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: kTextColor2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            Text(
              'Instant Help, Just a Tap Away',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: kTextColorAccent,
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, SplashScreen.routeName);
                // Navigator.of(context).pushNamed(IntroScreen.routeName);
              },
              child: Text('Get Started'),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}