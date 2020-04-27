import 'package:customtransitiondemo/app_widget.dart';
import 'package:customtransitiondemo/custom_transitions.dart';
import 'package:customtransitiondemo/first_module.dart';
import 'package:customtransitiondemo/first_page.dart';
import 'package:customtransitiondemo/home_page.dart';
import 'package:customtransitiondemo/second_module.dart';
import 'package:customtransitiondemo/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {

  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => HomePage()),
    Router("/firstmodule",
      module: FirstModule(),
      transition: TransitionType.custom,
      customTransition: rotationWithSlideTransition,
    ),
    Router("/firstpage",
      child: (_, args) => FirstPage(),
      transition: TransitionType.custom,
      customTransition: rotationWithSlideTransition,
    ),
    Router("/secondpage",
        child: (_, args) => SecondPage(),
        transition: TransitionType.custom,
        customTransition: scaleBounceTransition
    ),
    Router("/secondmodule",
        module: SecondModule(),
        transition: TransitionType.custom,
        customTransition: scaleBounceTransition
    ),
  ];

  @override
  Widget get bootstrap => AppWidget();
}