import 'package:demo/pages/four_page.dart';
import 'package:flutter/material.dart';
import 'package:demo/model/people.dart';

class ThirdthPage extends StatefulWidget {
  const ThirdthPage({Key? key}) : super(key: key);

  @override
  State<ThirdthPage> createState() => _ThirdthPageState();
}

class _ThirdthPageState extends State<ThirdthPage> {
  bool _favoriteselected=true;
  int _selected=0;
  List<People> peoplelist=[
    People("Christian Dawson", "christian_dawson@gmail.com", "asset/people1.webp"),
    People("Christian Edward", "christian_edward@gmail.com", "asset/people2.jpg"),
    People("Christiana Harison", "christian_harison@gmail.com", "asset/people3.jpg"),
    People("Christianita Felicia", "christian_felicia@gmail.com", "asset/people4.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child:  Scaffold(
            appBar: _buildAppbar,
            body:TabBarView(
              children: [
                Container(
                  child: ListView.builder(
                      itemCount: peoplelist.length,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8,top: 6),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FourPage()));
                            },
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                  color: Colors.blueAccent,
                                  width: 60,
                                  height: 60,
                                  child: Image.asset(peoplelist[index].image,fit: BoxFit.cover,),
                                ),
                              ),
                              title: Text(peoplelist[index].name,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(peoplelist[index].email,style: TextStyle(fontSize: 13),maxLines: 1,softWrap: false,overflow: TextOverflow.ellipsis,),
                              ),
                              trailing: IconButton(icon:Icon(Icons.favorite_border_outlined),
                              onPressed: (){
                                // setState((){
                                //   // _favoriteselected=!_favoriteselected;
                                //   // print("people${peoplelist[index]}");
                                // });
                              },),
                            ),
                          ),
                        );
                      }
                  ),
                ),
                Container()
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
      bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 120),
          child:Column(
            //mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18,right: 18),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent),borderRadius: BorderRadius.circular(20)),
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search_rounded,color: Colors.blueAccent,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      suffixIcon: Icon(Icons.speaker_phone_sharp,color: Colors.blueAccent,),
                      //suffixIconColor: Colors.blueAccent
                    ),
                  ),
                ),
              ),

              TabBar(
                onTap: (index){
                  setState((){
                    _selected=index;
                    //_tabselected;
                  });
                },
                    indicatorWeight: 3,
                    tabs: [
                      Tab(
                        child: Text("All Contact",style: TextStyle(color:_selected==0?Colors.blueAccent:Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                      Tab(
                        child: Text("Favorite",style: TextStyle(color:_selected==1?Colors.blueAccent:Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),),
                      ),

                    ],
                  )
            ],
          )
      ),
    );
  }

}
