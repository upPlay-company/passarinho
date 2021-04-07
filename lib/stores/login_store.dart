import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  _LoginStore() {
    autorun((_) {
      print(isFormValid);
    });
  }

  @observable
  String email = "";

  @action
  void setEmail(String value) => email = value;
  @observable
  String senha = "";

  @action
  void setPassord(String value) => senha = value;

  @computed
  bool get isFormValid => email.length > 6 && senha.length > 6;

  // RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$
//Improve thi").hasMatch(email);
}
