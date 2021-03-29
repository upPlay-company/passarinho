import 'package:mobx/mobx.dart';
part 'servico.g.dart';

class Cliente = _ClienteBase with _$Cliente;

abstract class _ClienteBase with Store {
  @observable
  String name;

  @action
  changeName(String newName) => name = newName;

  @observable
  String cpf;
  @action
  changeCpf(String newCpf) => cpf = newCpf;
}

class Veiculo = _VeiculoBase with _$Veiculo;

abstract class _VeiculoBase with Store {
  @observable
  String marca;
  @action
  changeMarca(String newMarca) => marca = newMarca;

  @observable
  String modelo;

  @action
  changeModelo(String newModelo) => modelo = newModelo;

  @observable
  String placa;
  changePlaca(String newPlaca) => placa = newPlaca;

  @observable
  String cor;
  changeCor(String newCor) => cor = newCor;
}

class Servico = _ServicoBase with _$Servico;

abstract class _ServicoBase with Store {
  @observable
  String descricao;
  changeDescricao(String newDescricao) => descricao = newDescricao;

  @observable
  String peca;
  changePeca(String newPeca) => peca = newPeca;

  @observable
  double valor;
  changeValor(double newValor) => valor = newValor;
}
