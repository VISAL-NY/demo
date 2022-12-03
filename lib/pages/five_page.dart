import 'package:demo/pages/six_page.dart';
import 'package:flutter/material.dart';

class FivePage extends StatefulWidget {
  //const FivePage({Key? key}) : super(key: key);
  String name;
  String email;
  String image;

  FivePage(this.name,this.email,this.image);

  @override
  State<FivePage> createState() => _FivePageState();
}

class _FivePageState extends State<FivePage> {
  List<DropdownMenuItem<String>> dropdownItems=[
    DropdownMenuItem(child: Text("Item1"),value: "Item1",),
    DropdownMenuItem(child: Text("Item2"),value: "Item2",),
    DropdownMenuItem(child: Text("Item3"),value: "Item3",),
    DropdownMenuItem(child: Text("Item4"),value: "Item4",),
    DropdownMenuItem(child: Text("Item5"),value: "Item5",),
    DropdownMenuItem(child: Text("Item6"),value: "Item6",),
  ];
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
                         borderRadius: BorderRadius.circular(100),
                         child: Container(
                           width: 80,
                           height: 80,
                           child: Image.asset(widget.image,fit: BoxFit.cover,),
                         ),
                       ),
                     ),
                     Container(
                       child: Text(widget.name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         child: Text(widget.email,style: TextStyle(color: Colors.black,fontSize: 16),),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 15,right: 15,top: 8.0,bottom: 8.0),
                       child: const Divider(
                         thickness: 1,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(20),
                         child: Container(
                           color: Colors.grey.withOpacity(0.08),
                           child: Column(
                             children:[
                               // ListTile(
                               //   leading: Text("Amount (USD) "),
                               //   trailing: Text("\$225.00",style: TextStyle(fontWeight: FontWeight.bold),),
                               // ),
                               // ListTile(
                               //   leading: Text("Tax "),
                               //   trailing: Text("-\$15.50",style: TextStyle(fontWeight: FontWeight.bold),),
                               // ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children:const [
                                     Text("Amount (USD) "),
                                     Text("\$225.00",style: TextStyle(fontWeight: FontWeight.bold),),
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children:const [
                                     Text("Tax "),
                                     Text("-\$15.50",style: TextStyle(fontWeight: FontWeight.bold),),
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(left: 10,right: 10),
                                 child: Divider(
                                   thickness: 1,
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children:const [
                                     Text("Total "),
                                     Text("\$209.50",style: TextStyle(fontWeight: FontWeight.bold),),
                                   ],
                                 ),
                               ),
                               // ListTile(
                               //   leading: Text("Total "),
                               //   trailing: Text("\$209.50",style: TextStyle(fontWeight: FontWeight.bold),),
                               // ),

                             ],
                           ),
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Container(
                         alignment: Alignment.topLeft,
                         child: Text("Payment Type",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                       ),
                     ),
                     // DropdownButtonFormField(items: ["Item1","Item2"].map<DropdownMenuItem<String>>(String(){}), onChanged: (value){
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: DropdownButtonFormField(
                            icon: Icon(Icons.arrow_drop_down_rounded,size: 30,color: Colors.black,),
                            decoration: InputDecoration(

                              border: OutlineInputBorder(
                                //borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20)
                              )
                            ),
                              value: "Item1",

                              items: dropdownItems,
                              onChanged: (value){
                                  print("value : $value");
                              }),
                        ),
                     //}),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Container(
                         alignment: Alignment.topLeft,
                         child: Text("Note",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Container(
                         alignment: Alignment.topLeft,
                         child: Text("Thank you for your hard work on this project. We look forward to working with you again in the future.",style: TextStyle(fontSize: 14,height: 1.5),),
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
