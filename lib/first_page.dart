import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<String> destinations = [
      "/secondpage", "/secondmodule",
      "secondpage", "secondmodule",
      "/firstpage/secondpage", "/firstpage/secondmodule",
      "firstpage/secondpage", "firstpage/secondmodule",
      "/firstmodule/secondpage", "/firstmodule/secondmodule",
      "firstmodule/secondpage", "firstmodule/secondmodule",
    ];

    return Scaffold(
      appBar: AppBar(title:Text("First")),
      body: Container(
        color: Colors.blue[300],
        child: SingleChildScrollView(
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
                ... destinations.map((d) =>
                RaisedButton(
                  color: Colors.blueAccent,
                  child: Text("Go to $d"),
                  onPressed: () {
                    Modular.to.pushNamed(d);
                  },
                )
                ).toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  FirstPage({Key key}) : super(key: key);
}
