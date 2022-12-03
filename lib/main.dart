
import 'package:demo/pages/login_page.dart';
import 'package:demo/pages/second_page.dart';
import 'package:demo/pages/splash_page.dart';
import 'package:demo/pages/thirth_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "fonts/DMSans-Regular.ttf",
        //primaryColor: Colors.red,
        primarySwatch: Colors.blue,
      ),
      home: MyApp(),
    )

  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SplashPage(),
        ),
    );
  }
}
