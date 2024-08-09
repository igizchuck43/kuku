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
          DropdownButtonFormField(
            decoration: InputDecoration(
              labelText: "Catergory",
              prefixIcon: Icon(Icons.category),
              border: OutlineInputBorder(),
            ),
            items: [
              DropdownMenuItem(
                value: 'Emergency',
                child: Text("Emergency"),
              ),
              DropdownMenuItem(
                value: 'Official',
                child: Text("Official"),
              ),
            ],
            onChanged: (value) {

            },
          ),
          SizedBox(
            height: 16.0,
          ),
        //   Message Field
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              labelText: "Add Message",
              hintText: "Urgent message",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
        //   SOS Button
          Center(
            child: ElevatedButton(
              onPressed: (){

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text("Send SOS"),
            ),
          )
        ],
      ),
    );
  }
}
