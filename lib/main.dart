import 'package:flutter/material.dart';
import 'package:jobasee/findPage/findPage.dart';
import 'package:jobasee/homePage/homepage.dart';
import 'package:jobasee/loginPage/loginPage.dart';
import 'package:jobasee/signupPage/signupPage.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupPage(),
    );
  }
}