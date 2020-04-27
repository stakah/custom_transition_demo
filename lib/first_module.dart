import 'package:customtransitiondemo/custom_transitions.dart';
import 'package:customtransitiondemo/first_bloc.dart';
import 'package:customtransitiondemo/first_page.dart';
import 'package:customtransitiondemo/second_module.dart';
import 'package:customtransitiondemo/second_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FirstModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => FirstBloc()),
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => FirstPage()),
    Router("secondpage",
        child: (_, args) => SecondPage(),
        transition: TransitionType.custom,
        customTransition: scaleBounceTransition
    ),
    Router("secondmodule",
        module: SecondModule(),
        transition: TransitionType.custom,
        customTransition: scaleBounceTransition
    ),
  ];

  static Inject get to => Inject<FirstModule>.of();
}
