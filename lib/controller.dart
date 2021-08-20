import 'package:mobx/mobx.dart';

class Controller {
  var counter = Observable(0);
  var increment;

  Controller() {
    increment = Action(_increment);
  }

  _increment() {
    counter.value = counter.value + 1;
  }
}
