import 'package:mobx/mobx.dart';
part 'servico_store.g.dart';

class ServicoStore = _ServicoStoreBase with _$ServicoStore;

abstract class _ServicoStoreBase with Store {
  @observable
  String name;

  @action
  changeName(String newName) => name = newName;

  @computed
  bool get nameValid => name != null && name.length > 6;
  String get nameError {
    if (name == null || nameValid)
      return null;
    else if (name.isEmpty)
      return 'Campo Obrigatório';
    else
      return 'Nome curto';
  }

  @observable
  String cpf;
  @action
  changeCpf(String newCpf) => cpf = newCpf;

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
