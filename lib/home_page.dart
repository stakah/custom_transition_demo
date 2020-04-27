import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.green[700],
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
                child: Text("Go to First Page >"),
                onPressed: (){
                  Navigator.pushNamed(context, "/firstpage");
                },
              ),
              RaisedButton(
                color: Colors.greenAccent,
                child: Text("Go to First Module >"),
                onPressed: (){
                  Navigator.pushNamed(context, "/firstmodule");
                },
              ),
              RaisedButton(
                color: Colors.greenAccent,
                child: Text("Go to Second Page >"),
                onPressed: (){
                  Navigator.pushNamed(context, "/secondpage");
                },
              ),
              RaisedButton(
                color: Colors.greenAccent,
                child: Text("Go to Second Module >"),
                onPressed: (){
                  Navigator.pushNamed(context, "/secondmodule");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
