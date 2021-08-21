import 'package:mobx/mobx.dart';
import 'models/client.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var client = Client();

  bool get isValid {
    return validateName() == null &&
        validateEmail() == null &&
        validateCpf() == null;
  }

  validateName() {
    if (client.name == null || client.name.isEmpty) {
      return "este campo é obrigatório";
    }
    return null;
  }

  validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return "este campo é obrigatório";
    } else if (!client.email.contains("@")) {
      return "este não é um email válido";
    }
    return null;
  }

  validateCpf() {
    if (client.cpf == null || client.cpf.isEmpty) {
      return "este campo é obrigatório";
    } else if (client.cpf.length != 11) {
      return "este não é um cpf válido";
    }
    return null;
  }

  dispose() {}
}
