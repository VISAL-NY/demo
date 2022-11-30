import 'package:flutter/material.dart';

class FourPage extends StatefulWidget {
  const FourPage({Key? key}) : super(key: key);

  @override
  State<FourPage> createState() => _FourPageState();
}

class _FourPageState extends State<FourPage> {
  var _moneyController=TextEditingController(text: "\$250");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 10,left: 5,right: 5,bottom: 10),
                       child: ListTile(
                         leading: ClipRRect(
                           borderRadius: BorderRadius.circular(50),
                           child: Container(
                             color: Colors.blueAccent,
                             width: 60,
                             height: 60,
                             child: Image.asset("asset/people1.webp",fit: BoxFit.cover,),
                           ),
                         ),
                         title: Text("Christian Dawson",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                         subtitle: Padding(
                           padding: const EdgeInsets.only(top: 3),
                           child: Text("christian_dawson@gmail.com",style: TextStyle(fontSize: 13),maxLines: 1,softWrap: false,overflow: TextOverflow.ellipsis,),
                         ),
                         trailing: IconButton(icon:Icon(Icons.edit_outlined,color: Colors.blueAccent,),
                           onPressed: (){
                           },),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                       child: Divider(
                         thickness: 1,
                       ),
                     ),
                     Container(
                       child: Text("Enter the ammount to send"),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(20),
                       child: Container(
                         // color: Colors.red,
                         // height: 140,
                         //alignment: Alignment.center,
                         child: TextField(
                           controller: _moneyController,
                           textAlign: TextAlign.center,
                           decoration: InputDecoration(
                             enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent,),borderRadius: BorderRadius.circular(10)),
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10)
                             )
                           ),
                         ),
                       ),
                     ),
                     Container(
                       alignment: Alignment.topLeft,
                       child: Text("Add a note (optional)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                     ),
                     Padding(
                         padding: EdgeInsets.all(22),
                       child: Container(
                         child: Text("Thank you for your hard work on this project.We look forward to working with you again in the future",
                           style: TextStyle(
                             fontSize: 14,
                             height:1.5
                           ),),
                       ),
                     )
                   ],
                 ),
                ),
                //Expanded(child: SizedBox.shrink()),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: ElevatedButton(
                        child: Text("Continue"),
                        onPressed: (){},
                      ),
                    ),
              ),
                 ),
            ],
          )
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
      title: Text("Send Money to",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
    );
}
}
