// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ordem_servico_novo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OrdemServicoNovoStore on _OrdemServicoNovoStore, Store {
  Computed<bool> _$clienteValidComputed;

  @override
  bool get clienteValid =>
      (_$clienteValidComputed ??= Computed<bool>(() => super.clienteValid,
              name: '_OrdemServicoNovoStore.clienteValid'))
          .value;
  Computed<bool> _$veiculoValidComputed;

  @override
  bool get veiculoValid =>
      (_$veiculoValidComputed ??= Computed<bool>(() => super.veiculoValid,
              name: '_OrdemServicoNovoStore.veiculoValid'))
          .value;

  final _$clienteAtom = Atom(name: '_OrdemServicoNovoStore.cliente');

  @override
  Cliente get cliente {
    _$clienteAtom.reportRead();
    return super.cliente;
  }

  @override
  set cliente(Cliente value) {
    _$clienteAtom.reportWrite(value, super.cliente, () {
      super.cliente = value;
    });
  }

  final _$veiculoAtom = Atom(name: '_OrdemServicoNovoStore.veiculo');

  @override
  Veiculo get veiculo {
    _$veiculoAtom.reportRead();
    return super.veiculo;
  }

  @override
  set veiculo(Veiculo value) {
    _$veiculoAtom.reportWrite(value, super.veiculo, () {
      super.veiculo = value;
    });
  }

  final _$showErrorsAtom = Atom(name: '_OrdemServicoNovoStore.showErrors');

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

  final _$loadingAtom = Atom(name: '_OrdemServicoNovoStore.loading');

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

  final _$errorAtom = Atom(name: '_OrdemServicoNovoStore.error');

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

  final _$savedAdAtom = Atom(name: '_OrdemServicoNovoStore.savedAd');

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

  final _$_OrdemServicoNovoStoreActionController =
      ActionController(name: '_OrdemServicoNovoStore');

  @override
  void setCliente(Cliente value) {
    final _$actionInfo = _$_OrdemServicoNovoStoreActionController.startAction(
        name: '_OrdemServicoNovoStore.setCliente');
    try {
      return super.setCliente(value);
    } finally {
      _$_OrdemServicoNovoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVeiculo(Veiculo value) {
    final _$actionInfo = _$_OrdemServicoNovoStoreActionController.startAction(
        name: '_OrdemServicoNovoStore.setVeiculo');
    try {
      return super.setVeiculo(value);
    } finally {
      _$_OrdemServicoNovoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void invalidSendPressed() {
    final _$actionInfo = _$_OrdemServicoNovoStoreActionController.startAction(
        name: '_OrdemServicoNovoStore.invalidSendPressed');
    try {
      return super.invalidSendPressed();
    } finally {
      _$_OrdemServicoNovoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cliente: ${cliente},
veiculo: ${veiculo},
showErrors: ${showErrors},
loading: ${loading},
error: ${error},
savedAd: ${savedAd},
clienteValid: ${clienteValid},
veiculoValid: ${veiculoValid}
    ''';
  }
}
