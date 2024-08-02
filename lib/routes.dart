import 'package:Kuku/screens/landing_screen/landing_screen.dart';
import 'package:flutter/material.dart';

import 'screens/complete_profile/complete_profile_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/login_success/login_success.dart';
import 'screens/otp/otp_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/splash_screen/splash_screen.dart';


final Map<String, WidgetBuilder> routes = {
  LandingScreen.routeName:(context) => const LandingScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),


};