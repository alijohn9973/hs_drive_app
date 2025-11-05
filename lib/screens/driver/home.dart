import 'package:flutter/material.dart';

class DriverHomeScreen extends StatefulWidget {
  @override State<DriverHomeScreen> createState() => _DriverHomeScreenState();
}

class _DriverHomeScreenState extends State<DriverHomeScreen> {
  bool online = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HS Drive - Driver')),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text('Driver home - go online/offline (demo)', style: TextStyle(fontSize: 16)),
          SizedBox(height: 12),
          SwitchListTile(
            title: Text(online ? 'Online' : 'Offline'),
            value: online,
            onChanged: (v) => setState(() { online = v; }),
          ),
          SizedBox(height: 12),
          ElevatedButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Simulated driver action')));
          }, child: Text('Simulate location update')),
        ]),
      ),
    );
  }
}