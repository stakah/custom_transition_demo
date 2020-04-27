import 'package:flutter/material.dart';

class UnknownRoutePage extends StatelessWidget {
  final RouteSettings unknownRouteSettings;

  UnknownRoutePage({this.unknownRouteSettings});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title:Text("Unknown Route"),
        backgroundColor: Colors.red[400],
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: "Unknown route:",
            style: TextStyle(color: Colors.white,),
            children: [
              TextSpan(
                text: unknownRouteSettings.name,
                style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
