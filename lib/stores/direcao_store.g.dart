// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direcao_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DirecaoStore on _DirecaoStore, Store {
  Computed<List<Direcao>> _$allDirecaoListComputed;

  @override
  List<Direcao> get allDirecaoList => (_$allDirecaoListComputed ??=
          Computed<List<Direcao>>(() => super.allDirecaoList,
              name: '_DirecaoStore.allDirecaoList'))
      .value;

  final _$errorAtom = Atom(name: '_DirecaoStore.error');

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

  final _$_DirecaoStoreActionController =
      ActionController(name: '_DirecaoStore');

  @override
  void setDirecao(List<Direcao> direcao) {
    final _$actionInfo = _$_DirecaoStoreActionController.startAction(
        name: '_DirecaoStore.setDirecao');
    try {
      return super.setDirecao(direcao);
    } finally {
      _$_DirecaoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo = _$_DirecaoStoreActionController.startAction(
        name: '_DirecaoStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_DirecaoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
allDirecaoList: ${allDirecaoList}
    ''';
  }
}
