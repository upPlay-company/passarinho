import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  _LoginStore() {
    autorun((_) {
      print(isFormavalid);
    });
  }

  @observable
  String email = "";

  @computed
  String get EmailError {
    if (email.isNotEmpty && email.contains("@"))
      return null;
    else if (email.isEmpty)
      return 'Campo obrigatório';
    else
      return 'email inválido';
  }

  @action
  void setEmail(String value) => email = value;

  @observable
  String senha = "";

  @computed
  bool get isFormavalid => senha.length > 6;

  @action
  void setSenha(String value) => senha = value;
}
