import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  @observable
  String email = "";
  @action
  void setEmail(String value) => email = value;

  @observable
  String senha = "";

  @action
  void setSenha(String value) => senha = value;

  //@computed
  //bool get isEmailValid =>
  // RegExp(r"/^WS{1,2}:\/\/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:56789/i")
  //  .hasMatch(email);

  //@computed
  // bool get isSenhaValid => senha.length >= 6;

  //@computed
  //bool get isFormValid => isEmailValid && isSenhaValid;
}
