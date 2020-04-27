import 'package:flutter/foundation.dart';

class FirstBloc extends ChangeNotifier {
  int counter = 0;

  increment() {
    counter++;
    notifyListeners();
  }
}