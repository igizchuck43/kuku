import 'package:flutter/material.dart';

class SosScreen extends StatelessWidget {
  const SosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        //   Location Field
          TextField(
            decoration: InputDecoration(
              labelText: "Location",
              hintText: "Nakawa",
              prefixIcon: Icon(Icons.location_on),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
        //   Category Field with Dropdown
          
        ],
      ),
    );
  }
}
