import 'package:flutter/material.dart';

class SosScreen extends StatelessWidget {
  static const routeName = '/Sos_screen';
  const SosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SOS',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFFF7643),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFF2F2F7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Set up alerts to notify past users and emergency contacts when you're in a danger situtation.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
                child: Text("Send SOS",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
