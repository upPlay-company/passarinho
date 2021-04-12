// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servico_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServicoStore on _ServicoStoreBase, Store {
  Computed<bool> _$nameValidComputed;

  @override
  bool get nameValid =>
      (_$nameValidComputed ??= Computed<bool>(() => super.nameValid,
              name: '_ServicoStoreBase.nameValid'))
          .value;

  final _$nameAtom = Atom(name: '_ServicoStoreBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$cpfAtom = Atom(name: '_ServicoStoreBase.cpf');

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

  final _$marcaAtom = Atom(name: '_ServicoStoreBase.marca');

  @override
  String get marca {
    _$marcaAtom.reportRead();
    return super.marca;
  }

  @override
  set marca(String value) {
    _$marcaAtom.reportWrite(value, super.marca, () {
      super.marca = value;
    });
  }

  final _$modeloAtom = Atom(name: '_ServicoStoreBase.modelo');

  @override
  String get modelo {
    _$modeloAtom.reportRead();
    return super.modelo;
  }

  @override
  set modelo(String value) {
    _$modeloAtom.reportWrite(value, super.modelo, () {
      super.modelo = value;
    });
  }

  final _$placaAtom = Atom(name: '_ServicoStoreBase.placa');

  @override
  String get placa {
    _$placaAtom.reportRead();
    return super.placa;
  }

  @override
  set placa(String value) {
    _$placaAtom.reportWrite(value, super.placa, () {
      super.placa = value;
    });
  }

  final _$corAtom = Atom(name: '_ServicoStoreBase.cor');

  @override
  String get cor {
    _$corAtom.reportRead();
    return super.cor;
  }

  @override
  set cor(String value) {
    _$corAtom.reportWrite(value, super.cor, () {
      super.cor = value;
    });
  }

  final _$descricaoAtom = Atom(name: '_ServicoStoreBase.descricao');

  @override
  String get descricao {
    _$descricaoAtom.reportRead();
    return super.descricao;
  }

  @override
  set descricao(String value) {
    _$descricaoAtom.reportWrite(value, super.descricao, () {
      super.descricao = value;
    });
  }

  final _$pecaAtom = Atom(name: '_ServicoStoreBase.peca');

  @override
  String get peca {
    _$pecaAtom.reportRead();
    return super.peca;
  }

  @override
  set peca(String value) {
    _$pecaAtom.reportWrite(value, super.peca, () {
      super.peca = value;
    });
  }

  final _$valorAtom = Atom(name: '_ServicoStoreBase.valor');

  @override
  double get valor {
    _$valorAtom.reportRead();
    return super.valor;
  }

  @override
  set valor(double value) {
    _$valorAtom.reportWrite(value, super.valor, () {
      super.valor = value;
    });
  }

  final _$_ServicoStoreBaseActionController =
      ActionController(name: '_ServicoStoreBase');

  @override
  dynamic changeName(String newName) {
    final _$actionInfo = _$_ServicoStoreBaseActionController.startAction(
        name: '_ServicoStoreBase.changeName');
    try {
      return super.changeName(newName);
    } finally {
      _$_ServicoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCpf(String newCpf) {
    final _$actionInfo = _$_ServicoStoreBaseActionController.startAction(
        name: '_ServicoStoreBase.changeCpf');
    try {
      return super.changeCpf(newCpf);
    } finally {
      _$_ServicoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeMarca(String newMarca) {
    final _$actionInfo = _$_ServicoStoreBaseActionController.startAction(
        name: '_ServicoStoreBase.changeMarca');
    try {
      return super.changeMarca(newMarca);
    } finally {
      _$_ServicoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeModelo(String newModelo) {
    final _$actionInfo = _$_ServicoStoreBaseActionController.startAction(
        name: '_ServicoStoreBase.changeModelo');
    try {
      return super.changeModelo(newModelo);
    } finally {
      _$_ServicoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
cpf: ${cpf},
marca: ${marca},
modelo: ${modelo},
placa: ${placa},
cor: ${cor},
descricao: ${descricao},
peca: ${peca},
valor: ${valor},
nameValid: ${nameValid}
    ''';
  }
}
