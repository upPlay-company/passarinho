// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cambio_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CambioStore on _CambioStore, Store {
  Computed<List<Cambio>> _$allCambioListComputed;

  @override
  List<Cambio> get allCambioList => (_$allCambioListComputed ??=
          Computed<List<Cambio>>(() => super.allCambioList,
              name: '_CambioStore.allCambioList'))
      .value;

  final _$errorAtom = Atom(name: '_CambioStore.error');

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

  final _$_CambioStoreActionController = ActionController(name: '_CambioStore');

  @override
  void setCambio(List<Cambio> cambio) {
    final _$actionInfo = _$_CambioStoreActionController.startAction(
        name: '_CambioStore.setCambio');
    try {
      return super.setCambio(cambio);
    } finally {
      _$_CambioStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo = _$_CambioStoreActionController.startAction(
        name: '_CambioStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_CambioStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
allCambioList: ${allCambioList}
    ''';
  }
}
