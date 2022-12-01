import 'package:flutter/material.dart';

class SixPage extends StatefulWidget {
  const SixPage({Key? key}) : super(key: key);

  @override
  State<SixPage> createState() => _SixPageState();
}

class _SixPageState extends State<SixPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      SizedBox(
                        child: Image.asset("asset/successful.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("Successful Send!",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                      ),
                    Text("Your money has been successfully sent to Christina Felici.",style: TextStyle(fontSize: 16,height: 1.5),textAlign: TextAlign.center,)
                    
                  ],
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: ElevatedButton(
                    child: Text("OK"),
                    onPressed: (){

                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
