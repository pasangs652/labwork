import 'package:flutter/material.dart';
import 'package:online_order/pages/home.dart';

void main()=>runApp(MyApp());
     
// craeting stateless widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  // material have two main properties home & title proprties & mandatary & whatever we build app will fall in material app
      debugShowCheckedModeBanner: false,   // for to remove deug banner from app
      theme: ThemeData(   // theme is used to make changes in apperance(color,style) of widget(appBar, container etc) directly applying changes here in theme & it will apply to specific widget
        primarySwatch: Colors.blue    // primarySwatch will automatically change color of all widgets of app
      ),
      title: 'Online Food Order',  // when minimizing it will show
      home: Home(),   // creating new class as home, for connetcing main.dart to home.dart
      
    );
  }
}