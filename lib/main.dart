import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp Clone',
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 8, 183, 93)
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Color.fromARGB(255, 8, 8, 8)     
        ),
        textTheme: TextTheme(
          subtitle1: new TextStyle(color: Color.fromARGB(255, 6, 6, 6), fontSize: 16.0),
          bodyText2: new TextStyle(color: Color.fromARGB(255, 255, 250, 250)),
          button: new TextStyle(color: Colors.white),
        ),
        bottomAppBarColor: Colors.white,
        primaryColor: Color.fromARGB(255, 18, 223, 169),
        accentColor: Color.fromARGB(255, 23, 228, 228),
      ),
      home: Home(),

    );

  }
}
