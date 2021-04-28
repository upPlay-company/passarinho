import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:passarinho_app/model/cep/address.dart';
import 'package:passarinho_app/helpers/extensions.dart';
import 'package:passarinho_app/model/cliente/cliente.dart';
import 'package:passarinho_app/repository/cliente_repository.dart';
import 'package:passarinho_app/stores/user_manager_store.dart';

import 'cep_store.dart';

part 'cliente_novo_store.g.dart';

class ClienteNovoStore = _ClienteNovoStore with _$ClienteNovoStore;

abstract class _ClienteNovoStore with Store {

  _ClienteNovoStore({this.cliente}) {
    nome = cliente.nome ?? '';
    numero = cliente.phone ?? '';
    cpf = cliente.cpf ?? '';
    rg = cliente.rg;
    email = cliente.email ?? '';

    if (cliente.cep != null)
      cepStore = CepStore(cliente.cep.zipCode);
    else
      cepStore = CepStore(null);
  }

  final Cliente cliente;

  @observable
  String nome = '';

  @action
  void setNome(String value) => nome = value;

  @computed
  bool get nomeValid => nome.length >= 6;
  String get nomeError {
    if (!showErrors || nomeValid)
      return null;
    else if (nome.isEmpty)
      return 'Campo obrigatório';
    else
      return 'Coloque nome e sobrenome';
  }

  @observable
  String numero = '';

  @action
  void setNumero(String value) => numero = value;

  @computed
  bool get numeroValid => numero.length >= 11;
  String get numeroError {
    if (!showErrors || numeroValid)
      return null;
    else if (numero.isEmpty)
      return 'Campo obrigatório';
    else
      return 'Número inválido';
  }

  @observable
  String cpf = '';

  @action
  void setCpf(String value) => cpf = value;

  @computed

  bool get cpfValid => cpf.length >= 11;
  String get cpjError {
    if(!showErrors || cpfValid){
      return null;
    } else {
      return 'inválido';
    }
  }

  @observable
  String rg = '';

  @action
  void setRg(String value) => rg = value;

  @computed

  bool get rgValid => cpf.length >= 11;
  String get rgError {
    if(!showErrors || rgValid){
      return null;
    } else {
      return 'inválido';
    }
  }

  @observable
  String email = '';

  @action
  void setEmail(String value) => email = value;

  @computed
  bool get emailValid => email != null && email.isEmailValid();

  CepStore cepStore;

  @computed
  Address get address => cepStore.address;
  bool get addressValid => address != null;
  // ignore: missing_return
  String get addressError {
    if (!showErrors || addressValid)
      return null;
  }

  @computed
  bool get formValid =>
          nomeValid &&
          numeroValid;

  @computed
  Function get sendPressed => formValid ? _send : null;

  @observable
  bool showErrors = false;

  @observable
  bool loading = false;

  @observable
  String error;

  @observable
  bool savedAd = false;

  @action
  Future<void> _send() async {
    cliente.nome = nome;
    cliente.phone = numero;
    cliente.cpf = cpf;
    cliente.rg = rg;
    cliente.email = email;
    cliente.cep = address;
    cliente.user = GetIt.I<UserManagerStore>().user;

    loading = true;
    try {
      await ClienteRepository().save(cliente);
      savedAd = true;
    } catch (e) {
      error = e;
    }
    loading = false;
  }

}