import 'package:flutter/material.dart';


const kTextColor2 = Color(0xFF22292E);
const kTextColorAccent = Color(0xFF8A8A8E);


const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Colors.black;

/// Main color pallete
const kPrimaryGreen = Color(0xFF54B175);
const kPrimaryRed = Color(0xFFFE6E4C);
const kPrimaryYellow = Color(0xFFFEBF43);
const kPrimaryPurple = Color(0xFF9B81E5);
const kPrimaryTosca = Color(0xFF03B0A9);
const kAccentGreen = Color(0xFFE4F3EA);
const kAccentRed = Color(0xFFFFECE8);
const kAccentYellow = Color(0xFFFFF6E4);
const kAccentPurple = Color(0xFFF1EDFC);
const kAccentTosca = Color(0xFFDDF5F4);

///common color for placeholder
const kGreyShade1 = Color(0xFF8E8E93);
const kGreyShade2 = Color(0xFFAEAEB2);
const kGreyShade3 = Color(0xFFC7C7CC);
const kGreyShade4 = Color(0xFFD1D1D6);
const kGreyShade5 = Color(0xFFE5E5EA);
const kGreyShade6 = Color(0xFFF2F2F7);
const kShadowColor = Color(0x3322292E);
const kSeperatorColor = Color(0xFFC6C6C8);
const kGradientColor = Color(0xFF22292E);
const kFillColorPrimary = Color(0xFFE4E4E6);
const kFillColorAccent = Color(0xFFE9E9EB);
const kFillColorThird = Color(0xFFEFEFF0);
const kFillColorForth = Color(0xFFF4F4F5);
const kAlertColor = Color(0xFFFF3B30);
const kFailColor = Color(0xFFFF4343);


const kAnimationDuration = Duration(milliseconds: 200);

const headingStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 16),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: kTextColor),
  );
}
