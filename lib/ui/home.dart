import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/pages/calls.dart';
import 'package:whatsapp_clone/ui/pages/camera.dart';
import 'package:whatsapp_clone/ui/pages/status.dart';
import 'package:whatsapp_clone/ui/pages/chats.dart';
import 'package:whatsapp_clone/ui/pages/contacts.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = new TabController(initialIndex: 1, vsync: this, length: 4);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        title: new Text('WhatsApp UI Clone', style: new TextStyle(color: Color.fromARGB(255, 246, 245, 245))),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.search),
            color: Color.fromARGB(255, 20, 19, 19),
            onPressed: (){},
          ),
          IconButton(
            icon: new Icon(Icons.more_vert),
            color: Color.fromARGB(255, 10, 10, 10),
            onPressed: (){},
          ),
        ],
        backgroundColor: Color.fromARGB(255, 16, 206, 114),
        bottom: new TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt, color: Color.fromARGB(255, 248, 244, 244),size: 20,)),
            new Tab(child: new Text("CHATS", style: Theme.of(context).textTheme.button)),
            new Tab(child: new Text("STATUS", style: Theme.of(context).textTheme.button)),
            new Tab(child: new Text("CALLS", style: Theme.of(context).textTheme.button)),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Camera(),
          new Chats(),
          new Status(),
          new Calls()
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: new Icon(
          Icons.message,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        onPressed: (){
          var router = MaterialPageRoute(
            builder: (BuildContext context) => new Contacts());
            Navigator.of(context).push(router);
        },
      ),
    );

  }
}