import 'package:mobx/mobx.dart';
import 'models/client.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var client = Client();

  validateName() {
    if (client.name == null || client.name.isEmpty) {
      return "este campo é obrigatório";
    }
    return null;
  }
}
