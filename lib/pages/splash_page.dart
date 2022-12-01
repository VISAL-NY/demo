import 'package:demo/pages/login_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }
  get _buildBody{
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Expanded(child: Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.asset("asset/logo.png",)),
                Text("PayZa",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
              ],
            ),
          )),
          CircularProgressIndicator()

        ],
      )
    );
  }
}
