import 'package:flutter/material.dart';
import 'package:regitration_prototype/sunmi_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration_Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SunmiScreen(),
    );
  }
}
