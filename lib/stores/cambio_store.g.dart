// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cambio_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CambiolStore on _CambiolStore, Store {
  Computed<List<Cambio>> _$allCambiolListComputed;

  @override
  List<Cambio> get allCambiolList => (_$allCambiolListComputed ??=
          Computed<List<Cambio>>(() => super.allCambiolList,
              name: '_CambiolStore.allCambiolList'))
      .value;

  final _$errorAtom = Atom(name: '_CambiolStore.error');

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

  final _$_CambiolStoreActionController =
      ActionController(name: '_CambiolStore');

  @override
  void setCambio(List<Cambio> cambio) {
    final _$actionInfo = _$_CambiolStoreActionController.startAction(
        name: '_CambiolStore.setCambio');
    try {
      return super.setCambio(cambio);
    } finally {
      _$_CambiolStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo = _$_CambiolStoreActionController.startAction(
        name: '_CambiolStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_CambiolStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
allCambiolList: ${allCambiolList}
    ''';
  }
}
