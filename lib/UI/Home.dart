import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {

  // This is where you should initialize your variables.
  int buttonPress = 0;
  int _buttonPress = 0;


  // This is where your actual logic (What makes the App Work) goes
  // Methods and such :
  // Note : You can also create your own personalized widgets here.

  void _buttonPressed_ () {
    _buttonPress = _buttonPress+1;

    setState(() {
      buttonPress = _buttonPress;
    });



  }

  // This is how you update UI
  // Use setState()({}) to update UI

  // Widgets :
  @override
  Widget build(BuildContext context) {

    //Widgets are the core of Flutter. We use widget for just about everything.
    //Use return new Scaffold() to organize widgets easier
    //your widgets here :

    return new Scaffold(
      backgroundColor: Colors.blue,
      body: new Center(



        child : new Column(

          children: <Widget>[

            new Padding(padding: const EdgeInsets.all(40)),

            new Text(
                    "Welcome to your very own Application!",
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,

                    )),

            new Padding(padding: const EdgeInsets.all(90)),


            new CupertinoButton(
                onPressed: _buttonPressed_,
                color: Colors.red,
                child: Icon(Icons.navigate_next),
              ),


            new Text(
                  "You have pressed this button \n\t\t\t\t\t\t\t\t\t\t\t\t\t       $buttonPress times!",
                  style: new TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color : Colors.white,

                  )),



          ],
        ),




      ),
      );


  }











}