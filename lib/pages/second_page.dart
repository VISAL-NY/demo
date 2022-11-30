

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  //String dollar_sign="\$";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 160,
              leading: Container(
                width: 20,
                height: 20,
                child: Image.asset("asset/logo.png"),
              ),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.document_scanner_sharp,color: Colors.white,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,color: Colors.white,))
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Container(
                  margin: EdgeInsets.all(10),
                  //width: 20,
                  //color: Colors.black,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("\$9,479.25"),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text("Balance Available",style: TextStyle(fontSize: 8),),
                      )
                    ],
                  )
                  ),
                ),
                ),
            SliverList(delegate: SliverChildListDelegate([
              Container(
                height:220,
                child: GridView.count(
                    mainAxisSpacing:0.4,
                    crossAxisCount: 4,
                    children: [
                      Container(
                     child: Column(
                       children: [
                         Container(
                           width:60,
                           height: 60,
                           child: Icon(Icons.telegram,color: Colors.blue,size: 32,),
                           decoration: BoxDecoration(
                             color: Colors.black12,
                             borderRadius: BorderRadius.circular(50)
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 8.0),
                           child: Text("Send",
                               style: TextStyle(
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold
                               ),
                               softWrap: false,
                               overflow: TextOverflow.ellipsis),
                         )
                       ],
                     ),
                    ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width:60,
                              height: 60,
                              child: Icon(Icons.upcoming_outlined,color: Colors.blue,size: 32,),
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Request",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width:60,
                              height: 60,
                              child: Icon(Icons.drive_folder_upload,color: Colors.blue,size: 32,),
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Transfer",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width:60,
                              height: 60,
                              child: Icon(Icons.note_add_rounded,color: Colors.blue,size: 32,),
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Create",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis),
                            )
                          ],
                        ),
                      ),

                      Container(
                        child: Column(
                          children: [
                            Container(
                              width:60,
                              height: 60,
                              child: Icon(Icons.sticky_note_2_rounded,color: Colors.blue,size: 32,),
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0,top: 8.0),
                              child: Text("Send a message",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width:60,
                              height: 60,
                              child: Icon(Icons.payment_outlined,color: Colors.blue,size: 32,),
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Pay Bills",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width:60,
                              height: 60,
                              child: Icon(Icons.splitscreen_rounded,color: Colors.blue,size: 32,),
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Split the",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width:60,
                              height: 60,
                              child: Icon(Icons.group,color: Colors.blue,size: 32,),
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0,top: 8.0),
                              child: Text("Share Contact",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Divider(
                    thickness: 1,
                ),
              ),
              Container(
                //color: Colors.orange,
                padding: EdgeInsets.only(top: 0),
                height: 240,
                child: ListView(
                  children: [
                    ListTile(
                      title: Text("Recently Activity",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                      trailing: IconButton(icon: Icon(Icons.keyboard_tab,color: Colors.blue,),onPressed: (){},),
                    ),
                    ListTile(
                      title: Text("Leslie Alexander",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),),
                      subtitle: Text("Preapproved Payment - Completed"),
                      trailing: Text("+ \$129.5",style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),)
                    ),
                    ListTile(
                        title: Text("Sovannah Nguyen",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                        subtitle: Text("Transfer Bank - Completed"),
                        trailing: Text("- \$47.5",style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),)
                    ),
                    ListTile(
                        title: Text("Cameron Williamson",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                        subtitle: Text("Preapproved Payment - Completed"),
                        trailing: Text("+ \$86.5",style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),)
                    ),
                    ListTile(
                        title: Text("Dianne Russell",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                        subtitle: Text("Transfer Bank - Completed"),
                        trailing: Text(" - \$66.5",style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),)
                    ),


                  ],
                ),
              ),
            ]))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor:Colors.grey,
          currentIndex:0 ,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.black12,),label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home")
          ],
        ),
      ),
    );
  }



}
