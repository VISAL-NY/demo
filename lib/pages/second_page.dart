

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
                )
          ],
        )
      ),
    );
  }



}
