import 'package:flutter/material.dart';
import 'login.dart'; // Import the MyLogin class
import 'register.dart'; // Import the MyRegister class

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const MyLogin(),
      'register': (context) => const MyRegister(),
    },
  ));
}
