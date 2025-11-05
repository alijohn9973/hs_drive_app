import 'package:flutter/material.dart';
import 'screens/role_select.dart';
import 'screens/rider/home.dart';
import 'screens/driver/home.dart';

void main() {
  runApp(HSDriveFullApp());
}

class HSDriveFullApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HS Drive - Full',
      theme: ThemeData(primaryColor: Color(0xFF22A55A)),
      initialRoute: '/',
      routes: {
        '/': (_) => RoleSelectScreen(),
        '/rider_home': (_) => RiderHomeScreen(),
        '/driver_home': (_) => DriverHomeScreen(),
      },
    );
  }
}