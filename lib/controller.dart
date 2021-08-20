import 'dart:developer';

import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  String nome = '';

  @observable
  String sobrenome = '';

  @computed
  String get nomecompleto => "$nome $sobrenome";

  changeName(String newName) {
    nome = newName;
  }

  changeLastName(String newName) {
    sobrenome = newName;
  }
}
