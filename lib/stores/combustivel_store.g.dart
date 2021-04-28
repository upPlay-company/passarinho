// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combustivel_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CombustivelStore on _CombustivelStore, Store {
  Computed<List<Combustivel>> _$allCombustivelListComputed;

  @override
  List<Combustivel> get allCombustivelList => (_$allCombustivelListComputed ??=
          Computed<List<Combustivel>>(() => super.allCombustivelList,
              name: '_CombustivelStore.allCombustivelList'))
      .value;

  final _$errorAtom = Atom(name: '_CombustivelStore.error');

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

  final _$_CombustivelStoreActionController =
      ActionController(name: '_CombustivelStore');

  @override
  void setCombustivel(List<Combustivel> combustivel) {
    final _$actionInfo = _$_CombustivelStoreActionController.startAction(
        name: '_CombustivelStore.setCombustivel');
    try {
      return super.setCombustivel(combustivel);
    } finally {
      _$_CombustivelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo = _$_CombustivelStoreActionController.startAction(
        name: '_CombustivelStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_CombustivelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
allCombustivelList: ${allCombustivelList}
    ''';
  }
}
