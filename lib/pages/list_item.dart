import 'package:demo/pages/four_page.dart';
import 'package:flutter/material.dart';

import '../model/people.dart';

class ListItem extends StatefulWidget {
  //const ListItem({Key? key}) : super(key: key);
  //List<People> peoplelist=[];

  String newEmail;
  String newName;
  String newImage;
  // People people=People();
  // people.

  ListItem(this.newName,this.newEmail,this.newImage);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool _favoriteselected=true;
  //People people=People();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FourPage(widget.newName, widget.newEmail, widget.newImage)));
      },
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            color: Colors.blueAccent,
            width: 60,
            height: 60,
            child: Image.asset(widget.newImage,fit: BoxFit.cover,),
          ),
        ),
        title: Text(widget.newName,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Text(widget.newEmail,style: TextStyle(fontSize: 12),maxLines: 1,softWrap: false,overflow: TextOverflow.ellipsis,),
        ),
        trailing: IconButton(icon:_favoriteselected?Icon(Icons.favorite_border_outlined):Icon(Icons.favorite,color: Colors.red,),
          onPressed: (){
            setState((){
               _favoriteselected=!_favoriteselected;
              // print("people${peoplelist[index]}");
            });
          },),
      ),
    );
  }
}
