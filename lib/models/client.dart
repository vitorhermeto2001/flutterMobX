import 'package:mobx/mobx.dart';
part 'client.g.dart';

class Client = ClientBase with _$Client;

abstract class ClientBase with Store {
  @observable
  var name;
  @action
  changeName(String newValue) => name = newValue;

  @observable
  var email;
  @action
  changeEmail(String newValue) => email = newValue;

  @observable
  var cpf;
  @action
  changeCpf(String newValue) => cpf = newValue;
}
