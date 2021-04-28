// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'valvula_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ValvulaStore on _ValvulaStore, Store {
  Computed<List<Valvula>> _$allValvulaListComputed;

  @override
  List<Valvula> get allValvulaList => (_$allValvulaListComputed ??=
          Computed<List<Valvula>>(() => super.allValvulaList,
              name: '_ValvulaStore.allValvulaList'))
      .value;

  final _$errorAtom = Atom(name: '_ValvulaStore.error');

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

  final _$_ValvulaStoreActionController =
      ActionController(name: '_ValvulaStore');

  @override
  void setValvula(List<Valvula> valvula) {
    final _$actionInfo = _$_ValvulaStoreActionController.startAction(
        name: '_ValvulaStore.setValvula');
    try {
      return super.setValvula(valvula);
    } finally {
      _$_ValvulaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo = _$_ValvulaStoreActionController.startAction(
        name: '_ValvulaStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_ValvulaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
allValvulaList: ${allValvulaList}
    ''';
  }
}
