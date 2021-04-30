import 'package:mobx/mobx.dart';
import 'package:passarinho_app/model/cliente/cliente.dart';
import 'package:passarinho_app/model/ordem_service/ordem_servico.dart';
import 'package:passarinho_app/model/veiculo/veiculo.dart';

part 'ordem_servico_novo_store.g.dart';

class OrdemServicoNovoStore = _OrdemServicoNovoStore with _$OrdemServicoNovoStore;

abstract class _OrdemServicoNovoStore with Store {

  _OrdemServicoNovoStore(this.ordemServico);

  OrdemServico ordemServico;

  @observable
  Cliente cliente;

  @action
  void setCliente(Cliente value) => cliente = value;

  @computed
  bool get clienteValid => cliente != null;
  String get clienteError {
    if (!showErrors || clienteValid)
      return null;
    else
      return 'Campo obrigatório';
  }

  @observable
  Veiculo veiculo;

  @action
  void setVeiculo(Veiculo value) => veiculo = value;

  @computed
  bool get veiculoValid => veiculo != null;
  String get veiculoError {
    if (!showErrors || veiculoValid)
      return null;
    else
      return 'Campo obrigatório';
  }

  @observable
  bool showErrors = false;

  @action
  void invalidSendPressed() => showErrors = true;

  @observable
  bool loading = false;

  @observable
  String error;

  @observable
  bool savedAd = false;

}