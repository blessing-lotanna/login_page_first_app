import 'package:flutter/material.dart';
import 'package:loginpagefirstapp/screens/loginscreen.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      theme: ThemeData(
          primarySwatch: Colors.purple,
      ),
    );
  }
}
