import 'package:flutter/material.dart';

class RiderHomeScreen extends StatefulWidget {
  @override State<RiderHomeScreen> createState() => _RiderHomeScreenState();
}

class _RiderHomeScreenState extends State<RiderHomeScreen> {
  String status = 'idle';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HS Drive - Rider')),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text('Rider home - request a ride (demo)', style: TextStyle(fontSize: 16)),
          SizedBox(height: 12),
          ElevatedButton(onPressed: () {
            setState(() { status = 'searching'; });
            Future.delayed(Duration(seconds: 2), () {
              setState(() { status = 'driver_found'; });
            });
          }, child: Text('Request Ride')),
          SizedBox(height: 12),
          Text('Status: ' + status),
        ]),
      ),
    );
  }
}