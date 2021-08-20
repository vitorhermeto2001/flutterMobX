import 'package:mobx/mobx.dart';
part 'cliente.g.dart';

class Client = ClientBase with _$Client;

abstract class ClientBase with Store {
  @observable
  String name = '';
  @action
  changeName(String newValue) => name = newValue;

  @observable
  String email = '';
  @action
  changeEmail(String newValue => email = newValue;

  @observable
  String cpf = '';
  @action
  changeCpf(String newValue => cpf = newValue;
}
