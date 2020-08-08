import "package:flutter/material.dart";
import 'package:online_order/pages/register_form.dart'; // here we again need to import material.dart to use it's features same as in main.dart

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(  // here in inside single scroll child view we had put one column & we did by wraping stack with column
          child: Column(
            children: <Widget>[
              Stack(    // here we wrap stack with column, so here child of column will be this stack
                // stack is used when we want want to put any item on top of another items
                children: <Widget>[
                  
                  // 1st widget- inside padding- container
                  Padding(
                    // here we wrap the container with padding
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      // here we put image inside this container
                      width: MediaQuery.of(context)
                          .size
                          .width, // meadiaqueary is will auto detect width
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(  // here we had formated or defragment this image deoration code to smaller fragmnet format- before was- image: DecorationImage(image: NetworkImage("https://amp.businessinsider.com/images/5a7aea7b7101ad094069a41b-750-563.png"),),
                          fit: BoxFit.cover,  // we had later added to image file the boxfit style properties
                          image: NetworkImage(     
                              "https://amp.businessinsider.com/images/5a7aea7b7101ad094069a41b-750-563.png"),
                        ),
                      ),
                    ),
                  ),

                  // 2nd widget
                  Positioned(
                    top: 12,
                    left: 30,
                    child: Container(
                      alignment: Alignment.center, // here we align text to center
                      width: 150,
                      height: 40,
                      color: Colors.white,
                      child: Text("Big Mac", textScaleFactor: 1.5 ),
                    ),
                  ),

                  Positioned(
                    top: 12,
                    right: 30,
                    child: Container(
                      alignment: Alignment.center, // here we align text to center
                      width: 150,
                      height: 40,
                      child: Text("Offer -10%", textScaleFactor: 1.9, style: TextStyle(color: Colors.blue),),
                    ),
                  ),
                ],
              ),

              OutlineButton(    // here we connect this OuLine Button (Forms) to another page
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrationForm()));
                },
                child: Text("Registration Button"),
              )
            ],
          ),
        ));
  }
}
