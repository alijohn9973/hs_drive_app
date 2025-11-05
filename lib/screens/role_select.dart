import 'package:flutter/material.dart';

class RoleSelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HS Drive - Choose Role')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF2563EB)),
              child: const Text('Rider (Book a Ride)'),
              onPressed: () => Navigator.pushNamed(context, '/rider_home'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFB923C)),
              child: const Text('Driver (Go Online)'),
              onPressed: () => Navigator.pushNamed(context, '/driver_home'),
            ),
          ],
        ),
      ),
    );
  }
}