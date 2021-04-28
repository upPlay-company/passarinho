// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_novo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClienteNovoStore on _ClienteNovoStore, Store {
  Computed<bool> _$nomeValidComputed;

  @override
  bool get nomeValid =>
      (_$nomeValidComputed ??= Computed<bool>(() => super.nomeValid,
              name: '_ClienteNovoStore.nomeValid'))
          .value;
  Computed<bool> _$numeroValidComputed;

  @override
  bool get numeroValid =>
      (_$numeroValidComputed ??= Computed<bool>(() => super.numeroValid,
              name: '_ClienteNovoStore.numeroValid'))
          .value;
  Computed<bool> _$cpfValidComputed;

  @override
  bool get cpfValid =>
      (_$cpfValidComputed ??= Computed<bool>(() => super.cpfValid,
              name: '_ClienteNovoStore.cpfValid'))
          .value;
  Computed<bool> _$rgValidComputed;

  @override
  bool get rgValid => (_$rgValidComputed ??= Computed<bool>(() => super.rgValid,
          name: '_ClienteNovoStore.rgValid'))
      .value;
  Computed<bool> _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_ClienteNovoStore.emailValid'))
          .value;
  Computed<Address> _$addressComputed;

  @override
  Address get address =>
      (_$addressComputed ??= Computed<Address>(() => super.address,
              name: '_ClienteNovoStore.address'))
          .value;
  Computed<bool> _$formValidComputed;

  @override
  bool get formValid =>
      (_$formValidComputed ??= Computed<bool>(() => super.formValid,
              name: '_ClienteNovoStore.formValid'))
          .value;
  Computed<Function> _$sendPressedComputed;

  @override
  Function get sendPressed =>
      (_$sendPressedComputed ??= Computed<Function>(() => super.sendPressed,
              name: '_ClienteNovoStore.sendPressed'))
          .value;

  final _$nomeAtom = Atom(name: '_ClienteNovoStore.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$numeroAtom = Atom(name: '_ClienteNovoStore.numero');

  @override
  String get numero {
    _$numeroAtom.reportRead();
    return super.numero;
  }

  @override
  set numero(String value) {
    _$numeroAtom.reportWrite(value, super.numero, () {
      super.numero = value;
    });
  }

  final _$cpfAtom = Atom(name: '_ClienteNovoStore.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$rgAtom = Atom(name: '_ClienteNovoStore.rg');

  @override
  String get rg {
    _$rgAtom.reportRead();
    return super.rg;
  }

  @override
  set rg(String value) {
    _$rgAtom.reportWrite(value, super.rg, () {
      super.rg = value;
    });
  }

  final _$emailAtom = Atom(name: '_ClienteNovoStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$showErrorsAtom = Atom(name: '_ClienteNovoStore.showErrors');

  @override
  bool get showErrors {
    _$showErrorsAtom.reportRead();
    return super.showErrors;
  }

  @override
  set showErrors(bool value) {
    _$showErrorsAtom.reportWrite(value, super.showErrors, () {
      super.showErrors = value;
    });
  }

  final _$loadingAtom = Atom(name: '_ClienteNovoStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$errorAtom = Atom(name: '_ClienteNovoStore.error');

  @override
  String get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$savedAdAtom = Atom(name: '_ClienteNovoStore.savedAd');

  @override
  bool get savedAd {
    _$savedAdAtom.reportRead();
    return super.savedAd;
  }

  @override
  set savedAd(bool value) {
    _$savedAdAtom.reportWrite(value, super.savedAd, () {
      super.savedAd = value;
    });
  }

  final _$_sendAsyncAction = AsyncAction('_ClienteNovoStore._send');

  @override
  Future<void> _send() {
    return _$_sendAsyncAction.run(() => super._send());
  }

  final _$_ClienteNovoStoreActionController =
      ActionController(name: '_ClienteNovoStore');

  @override
  void setNome(String value) {
    final _$actionInfo = _$_ClienteNovoStoreActionController.startAction(
        name: '_ClienteNovoStore.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_ClienteNovoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNumero(String value) {
    final _$actionInfo = _$_ClienteNovoStoreActionController.startAction(
        name: '_ClienteNovoStore.setNumero');
    try {
      return super.setNumero(value);
    } finally {
      _$_ClienteNovoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCpf(String value) {
    final _$actionInfo = _$_ClienteNovoStoreActionController.startAction(
        name: '_ClienteNovoStore.setCpf');
    try {
      return super.setCpf(value);
    } finally {
      _$_ClienteNovoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRg(String value) {
    final _$actionInfo = _$_ClienteNovoStoreActionController.startAction(
        name: '_ClienteNovoStore.setRg');
    try {
      return super.setRg(value);
    } finally {
      _$_ClienteNovoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_ClienteNovoStoreActionController.startAction(
        name: '_ClienteNovoStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_ClienteNovoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
numero: ${numero},
cpf: ${cpf},
rg: ${rg},
email: ${email},
showErrors: ${showErrors},
loading: ${loading},
error: ${error},
savedAd: ${savedAd},
nomeValid: ${nomeValid},
numeroValid: ${numeroValid},
cpfValid: ${cpfValid},
rgValid: ${rgValid},
emailValid: ${emailValid},
address: ${address},
formValid: ${formValid},
sendPressed: ${sendPressed}
    ''';
  }
}
