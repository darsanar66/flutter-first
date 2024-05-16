
import 'package:flutter/material.dart';
import 'package:mychat/Screens/HomeScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: "openSans",
        primaryColor: Colors.greenAccent, // WhatsApp primary color
        
        appBarTheme: AppBarTheme(
          color: Color(0xFF075E54),// Dark green color for app bar
        ),
      ),
      home: HomeScreen(),
    );
  }
}


