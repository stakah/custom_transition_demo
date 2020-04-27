import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(title: Text("Second"),
        backgroundColor: Colors.pink[700],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: "Route:",
                  style: TextStyle(color: Colors.white,),
                  children: [
                    TextSpan(
                      text: ModalRoute.of(context).settings.name,
                      style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              RaisedButton(
                color: Colors.greenAccent,
                child: Text("Go to / >"),
                onPressed: (){
                  Modular.to.pushNamed("/");
                },
              ),
              RaisedButton(
                color: Colors.greenAccent,
                child: Text("Go to /secondmodule/home >"),
                onPressed: (){
                  Navigator.pushNamed(context, "/secondmodule/home");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
