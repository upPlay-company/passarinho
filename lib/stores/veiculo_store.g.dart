// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'veiculo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VeiculoStore on _VeiculoStore, Store {
  Computed<List<Veiculo>> _$allVeiculoListComputed;

  @override
  List<Veiculo> get allVeiculoList => (_$allVeiculoListComputed ??=
          Computed<List<Veiculo>>(() => super.allVeiculoList,
              name: '_VeiculoStore.allVeiculoList'))
      .value;

  final _$errorAtom = Atom(name: '_VeiculoStore.error');

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

  final _$_VeiculoStoreActionController =
      ActionController(name: '_VeiculoStore');

  @override
  void setVeiculo(List<Veiculo> veiculo) {
    final _$actionInfo = _$_VeiculoStoreActionController.startAction(
        name: '_VeiculoStore.setVeiculo');
    try {
      return super.setVeiculo(veiculo);
    } finally {
      _$_VeiculoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo = _$_VeiculoStoreActionController.startAction(
        name: '_VeiculoStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_VeiculoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
allVeiculoList: ${allVeiculoList}
    ''';
  }
}
