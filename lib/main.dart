

import 'package:demo/pages/login_page.dart';
import 'package:demo/pages/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(SecondPage());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: LoginPage(),
        ),
      ),
    );
  }
}
