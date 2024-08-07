import 'package:flutter/material.dart';

class HomeAd extends StatelessWidget {
  const HomeAd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFE6E4C),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        "Press the SOS button for quick response",
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }
}

