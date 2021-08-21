import 'package:mobx/mobx.dart';
part 'item_model.g.dart';

class itemModel = _itemModelBase with _$itemModel;

abstract class _itemModelBase with Store {
  @observable
  String? title;

  @observable
  bool? check;

  @action
  setTitle(String value) => title = value;

  @action
  setCheck(bool value) => check = value;
}
