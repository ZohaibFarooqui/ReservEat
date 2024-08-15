import 'package:flutter/material.dart';
import 'splash_screen.dart';  // Import the SplashScreen file
import 'login.dart';  // Import the MyLogin widget

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash_screen',
    routes: {
      'splash_screen': (context) => SplashScreen(),
      'login': (context) => MyLogin(),  // Add the login route
    },
  ));
}
