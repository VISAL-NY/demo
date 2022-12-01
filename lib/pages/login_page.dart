import 'package:demo/pages/second_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var _emailcontroller=TextEditingController();
  var _password=TextEditingController();
  bool securText=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          //color: Colors.red,
          child: Column(
            children: [
                  Container(
                      height: 150,
                      width: 150,
                      child: Image.asset('asset/logo.png')
                  ),
              Text("Login to Your Account",style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: _emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.blueAccent)),
                    prefixIcon: Icon(Icons.mail,color: Colors.black,),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hintText:"Email",

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: TextField(
                  controller: _password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: securText?true:false,

                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.blueAccent)),
                    prefixIcon: Icon(Icons.lock,color: Colors.black,),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hintText:"Password",
                    suffixIcon: IconButton(
                      icon: securText?Icon(Icons.visibility_off,color: Colors.black,):Icon(Icons.visibility,color: Colors.black,),
                      onPressed: (){
                        setState(() {
                          securText=!securText;
                        });
                      },
                    )

                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: true,
                        onChanged: (context){
                        }),
                    Text("Remember me",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ElevatedButton(
                    onPressed:(){
                      // print("${_emailcontroller.text}");
                      // print("${_password.text}");
                        if(_emailcontroller.text.isEmpty){
                          return;
                        }
                        if(_password.text.isEmpty){
                          return;
                        }
                        if(_emailcontroller.text=="admin@gmail.com" && _password.text=="admin"){
                          Navigator.of(context).push(_SecondRoute());
                        }
                        else{
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Incorrect email or password")
                          ));
                        }

                    },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.8,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Text("sign in"),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Divider(
                            thickness: 1,
                          ),
                        )
                    ),
                    Text("or continue with"),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Divider(
                            thickness: 1,
                          ),
                        ))

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 80,
                      height: 60,
                      decoration: BoxDecoration(
                         // color: Colors.blueAccent,
                        border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset("asset/002-facebook.png"),
                    ),
                  Container(
                    width: 80,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                       // color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("asset/001-search.png"),
                  ),
                    Container(
                      width: 80,
                      height: 60,
                      decoration: BoxDecoration(
                          //color: Colors.blueAccent,
                        border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                          height: 2,
                          width: 2,
                          child:Image.asset("asset/003-apple.png")),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: RichText(
                  text:TextSpan(
                    text: "Already have an account ?",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    children: [
                      TextSpan(
                        text: "  Sign up",
                        style: TextStyle(
                          color: Colors.blueAccent
                        )
                      )
                    ]
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Route _SecondRoute(){
    return PageRouteBuilder(
        pageBuilder: (context,animation,secondaryAnimation)=>SecondPage(),
        transitionsBuilder: (context,animation,secondaryAnimation,child){
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        }
    );
  }
}
