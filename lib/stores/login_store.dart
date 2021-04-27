import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:passarinho_app/repository/user_repository.dart';
import 'package:passarinho_app/stores/user_manager_store.dart';
import 'package:passarinho_app/helpers/extensions.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  String email;

  @action
  void setEmail(String value) => email = value;

  @computed
  bool get emailValid => email != null && email.isEmailValid();
  String get emailError =>
      email == null || emailValid ? null : 'E-mail inválido';

  @observable
  String password;

  @action
  void setPassword(String value) => password = value;

  @computed
  bool get passwordValid => password != null && password.length >= 4;
  String get passwordError =>
      password == null || passwordValid ? null : 'Senha inválida';

  @computed
  Function get loginPressed =>
      emailValid && passwordValid && !loading ? _login : null;

  @observable
  bool loading = false;

  @observable
  String error;

  @action
  Future<void> _login() async {
    loading = true;
    error = null;

    try {
      final user = await UserRepository().loginWithEmail(email, password);
      GetIt.I<UserManagerStore>().setUser(user);
    } catch (e) {
      error = e;
    }

    loading = false;
  }
}
