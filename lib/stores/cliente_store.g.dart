// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClienteStore on _ClienteStore, Store {
  Computed<List<Cliente>> _$allClienteListComputed;

  @override
  List<Cliente> get allClienteList => (_$allClienteListComputed ??=
          Computed<List<Cliente>>(() => super.allClienteList,
              name: '_ClienteStore.allClienteList'))
      .value;

  final _$errorAtom = Atom(name: '_ClienteStore.error');

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

  final _$_ClienteStoreActionController =
      ActionController(name: '_ClienteStore');

  @override
  void setCliente(List<Cliente> cliente) {
    final _$actionInfo = _$_ClienteStoreActionController.startAction(
        name: '_ClienteStore.setCliente');
    try {
      return super.setCliente(cliente);
    } finally {
      _$_ClienteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo = _$_ClienteStoreActionController.startAction(
        name: '_ClienteStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_ClienteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
allClienteList: ${allClienteList}
    ''';
  }
}
