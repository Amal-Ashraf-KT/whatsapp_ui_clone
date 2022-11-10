import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';
import 'package:whatsapp_clone/ui/pages/chat_screen.dart';

class Contacts extends StatefulWidget {
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 22, 21, 21)
        ),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.search),
            color: Color.fromARGB(255, 15, 14, 14),
            onPressed: (){},
          ),
          IconButton(
            icon: new Icon(Icons.more_vert),
            color: Color.fromARGB(255, 18, 18, 18),
            onPressed: (){},
          ),
        ],
        title: new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Contacts", style: new TextStyle(color: Color.fromARGB(255, 9, 9, 9))),
                new Container(
                  // padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: new Text("5 contacts",
                  style: new TextStyle(
                    fontSize: 12.0,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 19, 19, 19)
                  ),
                  )
                )
              ],
            ),
        ),
      ),
      body: new ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context,i) => new Column(
        children: <Widget>[
          new Divider(height: 22.0,),
          new ListTile(
            leading: new CircleAvatar(
              maxRadius: 25,
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              new Text(
              messageData[i].name,
                style: new TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
              new Text(
                'MOBILE',
                  style: new TextStyle(
                    color: Colors.green,
                    fontSize: 16.0
                  ),
                ),
              ],
            ),
            onTap: (){
              var route = new MaterialPageRoute(
                builder: (BuildContext context) => ChatScreen(name: messageData[i].name, profileImage: messageData[i].imageUrl)
              );
              Navigator.of(context).push(route);
            },
          ),
        ],
      ),
    ),   
    );
  }
}