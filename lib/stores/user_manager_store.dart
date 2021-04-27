import 'package:mobx/mobx.dart';
import 'package:passarinho_app/model/user/user.dart';
import 'package:passarinho_app/repository/user_repository.dart';

part 'user_manager_store.g.dart';

class UserManagerStore = _UserManagerStore with _$UserManagerStore;

abstract class _UserManagerStore with Store {

  _UserManagerStore(){
    _getCurrentUser();
  }

  @observable
  User user;

  @action
  void setUser(User value) => user = value;

  @computed
  bool get isLoggedIn => user != null;

  Future<void> _getCurrentUser() async {
    final user = await UserRepository().currentUser();
    setUser(user);
  }

  Future<void> logout() async {
    await UserRepository().logout();
    setUser(null);
  }

}