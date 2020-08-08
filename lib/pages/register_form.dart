import 'package:flutter/material.dart';
class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registraion Form"),),
      // here we wrap the column with new widget fro to make form by clicking Column-bulb-wrap with widget
      body: Padding(  // we wrap the below Form with padding, by clicking Form-Wrap with padding
        padding: const EdgeInsets.all(16.0),
        child: Form(   // we give wrap widget name as Form & here inside Form there is Column
        child: SingleChildScrollView( 
                child: Column(   
                crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Below is all widget
              TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),

                SizedBox(height: 10,),  // for to give space between two TextField
                TextField(
                decoration: InputDecoration(
                  labelText: "Address",
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              
                 SizedBox(height: 10,),  // for to give space between two TextField
                TextField(
                decoration: InputDecoration(
                  labelText: "Address",
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),

               SizedBox(height: 10,),  // for to give space between two TextField
                TextField(
                decoration: InputDecoration(
                  labelText: "city",
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.location_city),
                ),
              ),

               SizedBox(height: 10,),  // for to give space between two TextField
                TextField(
                decoration: InputDecoration(
                  labelText: "Mobile",
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,  // changing type of keyboard as number 
              ),

               SizedBox(height: 10,),  // for to give space between two TextField
                TextField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),

              SizedBox(height: 10,),
              Text("Gender"),   // here we did wrapping of text inside container widget & inside separate row widget
              Row(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Radio(value: null, groupValue: null, onChanged: null),
                        Text("Male"),
                      ],
                    ),
                  ),

                  Container(
                    child: Row(
                      children: <Widget>[
                        Radio(value: null, groupValue: null, onChanged: null),
                        Text("Female"),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10,),
              Text("Which Course Do You Like Most?"),
              Row(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Checkbox(value: false, onChanged: null),
                        Text("C programming"),
                      ],
                    ),
                  ),

                  Container(
                    child: Row(
                      children: <Widget>[
                        Checkbox(value: false, onChanged: null),
                        Text("Flutter"),
                      ],
                    ),
                  ),

                   Container(
                    child: Row(
                      children: <Widget>[
                        Checkbox(value: false, onChanged: null),
                        Text("Java"),
                      ],
                    ),
                  ),
                ],
              ), 

              // here we 1st Raised Button- wrap it with center- again wrap with sizebox (clicking raisedbutton-wrap with widget- typing sizebox in widget name)
              Center(
                child: SizedBox(
                  width: double.infinity,  // means as much as width it can take
                                  child: RaisedButton(   
                    onPressed: (){},
                    child: Text("Register"),
                    ),
                ),
              )
            ],
            ),
          
        ),
        ),
        ),
     );  
  }
}