import 'package:flutter/material.dart';

import '../constants.dart';
import '../utils/screen_utils.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.hint,
    required this.icon,
  });
  final String hint;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            getProportionateScreenWidth(8),
          ),
          borderSide: BorderSide(
            color: kGreyShade3,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            getProportionateScreenWidth(8),
          ),
          borderSide: BorderSide(
            color: kGreyShade3,
          ),
        ),
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: kGreyShade3,
        ),
        suffixIcon: icon,
      ),
    );
  }
}