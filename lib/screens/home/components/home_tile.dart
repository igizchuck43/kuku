import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  const HomeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          children: [
              IconCard(icon: Icons.car_rental, text: 'Book an ambulance'),
              IconCard(icon: Icons.add, text: 'First Aid Tips'),
              IconCard(icon: Icons.call, text: 'Emergency Contacts'),
              IconCard(icon: Icons.local_police, text: 'Security Organ'),
            
          ],
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconCard({required this.icon, required this.text, Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 48.0,

            ),
            const SizedBox(height: 16.0),
            Text(
              text,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

