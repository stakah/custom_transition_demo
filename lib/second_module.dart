import 'package:customtransitiondemo/home_page.dart';
import 'package:customtransitiondemo/second_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SecondModule extends ChildModule {
  @override
  List<Bind> get binds => [
//    Bind((i) => SecondBloc()),
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => SecondPage()),
    Router("/home", child: (_, args) => HomePage()),
  ];

  static Inject get to => Inject<SecondModule>.of();
}
