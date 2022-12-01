import 'package:demo/pages/six_page.dart';
import 'package:flutter/material.dart';

class FivePage extends StatefulWidget {
  const FivePage({Key? key}) : super(key: key);

  @override
  State<FivePage> createState() => _FivePageState();
}

class _FivePageState extends State<FivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
           Expanded(
             child: SingleChildScrollView(
               child: Container(
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(50),
                         child: Container(
                           width: 80,
                           height: 80,
                           child: Image.asset("asset/people1.webp",fit: BoxFit.cover,),
                         ),
                       ),
                     ),
                     Container(
                       child: Text("Cristina Felici",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         child: Text("cristina_felici@gmail.com",style: TextStyle(color: Colors.black,fontSize: 16),),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 15,right: 15,top: 8.0,bottom: 8.0),
                       child: const Divider(
                         thickness: 1,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(15),
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(20),
                         child: Container(
                           color: Colors.grey.withOpacity(0.08),
                           child: Column(
                             children:const [
                               ListTile(
                                 leading: Text("Amount (USD) "),
                                 trailing: Text("\$225.00",style: TextStyle(fontWeight: FontWeight.bold),),
                               ),
                               ListTile(
                                 leading: Text("Tax "),
                                 trailing: Text("-\$15.50",style: TextStyle(fontWeight: FontWeight.bold),),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(left: 10,right: 10),
                                 child: Divider(
                                   thickness: 1,
                                 ),
                               ),
                               ListTile(
                                 leading: Text("Total "),
                                 trailing: Text("\$209.50",style: TextStyle(fontWeight: FontWeight.bold),),
                               ),

                             ],
                           ),
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Container(
                         alignment: Alignment.topLeft,
                         child: Text("Payment Type",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                       ),
                     ),
                     // DropdownButtonFormField(items: ["Item1","Item2"].map<DropdownMenuItem<String>>(String(){}), onChanged: (value){

                     //}),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Container(
                         alignment: Alignment.topLeft,
                         child: Text("Note",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Container(
                         alignment: Alignment.topLeft,
                         child: Text("Thank you for your hard work on this project. We look forward to working with you again in the future.",style: TextStyle(fontSize: 18,height: 1.5),),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ),

            //BUTTON CONTINUE
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    child: Text("Confirm & Send"),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SixPage()));
                    },
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
  get _buildAppbar{
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
        Navigator.pop(context);
      },),
      title: Text("Review Summary",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
    );
  }
}
