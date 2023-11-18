import 'package:flutter/material.dart';
import 'package:resturantbook/detailspage.dart';
import 'package:resturantbook/homepage.dart';
import 'package:resturantbook/welcomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
     
      ),
      home:  WelcomeScreen(),
    );
  }
}


