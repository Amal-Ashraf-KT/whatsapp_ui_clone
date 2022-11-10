import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status_model.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new CircleAvatar(
              maxRadius: 25,
              foregroundColor: Color.fromARGB(255, 0, 191, 165),
              backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/23518097?s=400&u=91ac76bebfb16bdfffa49216ac336a0d615a1444&v=4"),
            ),
            title: new Text(
              "El chuy",
              style: new TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: new Text(
              "Add new status"
            ),
          ),
          new Container(
            child: Padding(
              padding: EdgeInsets.only(left: 4.0),
              child: new Text(
                "Recents",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Theme.of(context).colorScheme.secondary,
                )

              ),
            ),
            
          ),
          new Divider(
            thickness: 3,
          ),
          new ListTile(
            leading: 
            // new CircleAvatar(
            //   maxRadius: 25,
            //   foregroundColor: Colors.deepPurple.shade100,
            //   backgroundColor: Colors.green,
            //   backgroundImage: NetworkImage(status[2].imageUrl),
            // ),



            Container(
             width: 50.0,
             height: 100.0,
             decoration: BoxDecoration(
               color: const Color(0xff7c94b6),
               image: DecorationImage(
                 image: NetworkImage(status[2].imageUrl),
                 fit: BoxFit.cover,
               ),
               borderRadius: BorderRadius.all( Radius.circular(50.0)),
               border: Border.all(
                 color: Color.fromARGB(255, 70, 244, 54),
                 width: 4.0,
               ),
             ),
           ),







            title: new Text(
              status[2].name,
              style: new TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: new Text(
              "06:18 PM"
            ),
          ),
        ],
      ),
    );
  }
}