import 'package:demo/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2),()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }
  get _buildBody{
    return Container(
      child: Column(
        children: [
          Expanded(child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.asset("asset/logo.png",)),
                Text("PayZa",style: TextStyle(color:Color.fromRGBO(
                    21, 41, 79, 1.0),fontWeight: FontWeight.bold,fontSize: 32),)
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: LoadingBouncingLine.circle(
              size: 60,
              duration: Duration(seconds: 3),
              backgroundColor: Colors.blueAccent,
            )
          )

        ],
      )
    );
  }
}
