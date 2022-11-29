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
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        //color: Colors.red,
        child: Column(
          children: [
                Container(
                    height: 200,
                    width: 200,
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
                  prefixIcon: Icon(Icons.mail,color: Colors.black,),
                  border: OutlineInputBorder(),
                  hintText:"Input your Email",

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
                  prefixIcon: Icon(Icons.lock,color: Colors.black,),
                  border: OutlineInputBorder(),
                  hintText:"Input your Password",
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
                  Text("Remember me")
                ],
              ),
            ),
            ElevatedButton(

                onPressed:(){

                    if(_emailcontroller=="admin@gmail.com" && _password=="admin"){
                      print("successful");
                    }
                    else{
                      print("incorrect");
                    }

                },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(40)
                ),
                child: Text("sing in"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
