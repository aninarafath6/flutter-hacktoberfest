import 'package:flutter/material.dart';
import 'package:ivanrj7j/pages/BalancePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BalancePage(balance: "263.000", userImage: "assets/images/avatar.jpg",),
    );
  }
}


