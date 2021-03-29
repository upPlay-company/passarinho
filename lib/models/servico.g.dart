// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servico.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Cliente on _ClienteBase, Store {
  final _$nameAtom = Atom(name: '_ClienteBase.name');

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

  final _$cpfAtom = Atom(name: '_ClienteBase.cpf');

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

  final _$_ClienteBaseActionController = ActionController(name: '_ClienteBase');

  @override
  dynamic changeName(String newName) {
    final _$actionInfo = _$_ClienteBaseActionController.startAction(
        name: '_ClienteBase.changeName');
    try {
      return super.changeName(newName);
    } finally {
      _$_ClienteBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCpf(String newCpf) {
    final _$actionInfo = _$_ClienteBaseActionController.startAction(
        name: '_ClienteBase.changeCpf');
    try {
      return super.changeCpf(newCpf);
    } finally {
      _$_ClienteBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
cpf: ${cpf}
    ''';
  }
}

mixin _$Veiculo on _VeiculoBase, Store {
  final _$marcaAtom = Atom(name: '_VeiculoBase.marca');

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

  final _$modeloAtom = Atom(name: '_VeiculoBase.modelo');

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

  final _$placaAtom = Atom(name: '_VeiculoBase.placa');

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

  final _$corAtom = Atom(name: '_VeiculoBase.cor');

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

  final _$_VeiculoBaseActionController = ActionController(name: '_VeiculoBase');

  @override
  dynamic changeMarca(String newMarca) {
    final _$actionInfo = _$_VeiculoBaseActionController.startAction(
        name: '_VeiculoBase.changeMarca');
    try {
      return super.changeMarca(newMarca);
    } finally {
      _$_VeiculoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeModelo(String newModelo) {
    final _$actionInfo = _$_VeiculoBaseActionController.startAction(
        name: '_VeiculoBase.changeModelo');
    try {
      return super.changeModelo(newModelo);
    } finally {
      _$_VeiculoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
marca: ${marca},
modelo: ${modelo},
placa: ${placa},
cor: ${cor}
    ''';
  }
}

mixin _$Servico on _ServicoBase, Store {
  final _$descricaoAtom = Atom(name: '_ServicoBase.descricao');

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

  final _$pecaAtom = Atom(name: '_ServicoBase.peca');

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

  final _$valorAtom = Atom(name: '_ServicoBase.valor');

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

  @override
  String toString() {
    return '''
descricao: ${descricao},
peca: ${peca},
valor: ${valor}
    ''';
  }
}
