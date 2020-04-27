import 'package:customtransitiondemo/unkownroute_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      onGenerateRoute: Modular.generateRoute,
      onUnknownRoute: (settings){
        return MaterialPageRoute(
          settings: settings,
          builder: (context){
            return UnknownRoutePage(unknownRouteSettings: settings);
          },
        );
      },
      navigatorKey: Modular.navigatorKey,
    );
  }
}
