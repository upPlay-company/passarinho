import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:passarinho_app/model/cliente/cliente.dart';
import 'package:passarinho_app/model/veiculo/components/cambio/cambio.dart';
import 'package:passarinho_app/model/veiculo/components/combustivel/combustivel.dart';
import 'package:passarinho_app/model/veiculo/components/direcao/direcao.dart';
import 'package:passarinho_app/model/veiculo/components/valvula/valvula.dart';
import 'package:passarinho_app/model/veiculo/veiculo.dart';
import 'package:passarinho_app/repository/veiculo_novo_repository.dart';
import 'package:passarinho_app/stores/user_manager_store.dart';

part 'veiculo_novo_store.g.dart';

class VeiculoNovoStore = _VeiculoNovoStore with _$VeiculoNovoStore;

abstract class _VeiculoNovoStore with Store {

  _VeiculoNovoStore(this.veiculo){
    cliente = veiculo.cliente;
    placa = veiculo.placa ?? '';
    marca = veiculo.marca ?? '';
    modelo = veiculo.modelo ?? '';
    anoModelo = veiculo.anoModelo ?? '';
    kmText = veiculo.km ?? '';
    direcao = veiculo.direcao;
    cambio = veiculo.cambio;
    motor = veiculo.motor ?? '';
    valvula = veiculo.valvula;
    cor = veiculo.cor ?? '';
    combustivel = veiculo.combustivel;
  }

  Veiculo veiculo;

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
  String placa = '';

  @action
  void setPlaca(String value) => placa = value;

  @computed
  bool get placaValid => placa.length >= 8;
  String get placaError {
    if (!showErrors || placaValid)
      return null;
    else if (placa.isEmpty)
      return 'Campo obrigatório';
    else
      return 'placa muito curta';
  }

  @observable
  String marca = '';

  @action
  void setMarca(String value) => marca = value;

  @computed
  bool get marcaValid => marca.length >= 99999;
  String get marcaError {
    if (!showErrors || marcaValid)
      return null;
    else if (marca.isEmpty)
      return 'Campo obrigatório';
    else return null;
  }

  @observable
  String modelo = '';

  @action
  void setModelo(String value) => modelo = value;

  @computed
  bool get modeloValid => modelo.length >= 99999;
  String get modeloError {
    if (!showErrors || modeloValid)
      return null;
    else if (modelo.isEmpty)
      return 'Campo obrigatório';
    else return null;
  }

  @observable
  String anoModelo = '';

  @action
  void setAnoModelo(String value) => anoModelo = value;

  @computed
  bool get anoModeloValid => anoModelo.length >= 99999;
  String get anoModeloError {
    if (!showErrors || anoModeloValid)
      return null;
    else if (anoModelo.isEmpty)
      return 'Campo obrigatório';
    else return null;
  }

  @observable
  String kmText = '';

  @action
  void setKm(String value) => kmText = value;

  @computed
  num get km {
      return num.tryParse(kmText);
  }

  bool get kmValid => km != null && km <= 9999999999999;
  String get kmError {
    if (!showErrors || kmValid)
      return null;
    else if (kmText.isEmpty)
      return 'Campo obrigatório';
    else
      return null;
  }

  @observable
  Direcao direcao;

  @action
  void setDirecao(Direcao value) => direcao = value;

  @computed
  bool get direcaoValid => direcao != null;
  String get direcaoError {
    if (!showErrors || direcaoValid)
      return null;
    else
      return 'Campo obrigatório';
  }

  @observable
  Cambio cambio;

  @action
  void setCambio(Cambio value) => cambio = value;

  @computed
  bool get cambioValid => cambio != null;
  String get cambioError {
    if (!showErrors || cambioValid)
      return null;
    else
      return 'Campo obrigatório';
  }

  @observable
  String motor = '';

  @action
  void setMotor(String value) => motor = value;

  @computed
  bool get motorValid => motor.length >= 99999;
  String get motorError {
    if (!showErrors || motorValid)
      return null;
    else if (motor.isEmpty)
      return 'Campo obrigatório';
    else return null;
  }

  @observable
  Valvula valvula;

  @action
  void setValvula(Valvula value) => valvula = value;

  @computed
  bool get valvulaValid => valvula != null;
  String get valvulaError {
    if (!showErrors || valvulaValid)
      return null;
    else
      return 'Campo obrigatório';
  }

  @observable
  String cor = '';

  @action
  void setCor(String value) => cor = value;

  @computed
  bool get corValid => cor.length >= 99999;
  String get corError {
    if (!showErrors || corValid)
      return null;
    else if (cor.isEmpty)
      return 'Campo obrigatório';
    else return null;
  }

  @observable
  Combustivel combustivel;

  @action
  void setCombustivel(Combustivel value) => combustivel = value;

  @computed
  bool get combustivelValid => combustivel != null;
  String get combustivelError {
    if (!showErrors || combustivelValid)
      return null;
    else
      return 'Campo obrigatório';
  }

  @computed
  bool get formValid =>
          clienteValid &&
          placaValid &&
          marcaValid &&
          modeloValid &&
          anoModeloValid &&
          kmValid &&
          direcaoValid &&
          cambioValid &&
          motorValid &&
          valvulaValid &&
          corValid &&
          combustivelValid;

  @computed
  Function get sendPressed => formValid ? _send : null;

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

  @action
  Future<void> _send() async {
    veiculo.cliente = cliente;
    veiculo.placa = placa;
    veiculo.marca = marca;
    veiculo.modelo = modelo;
    veiculo.anoModelo = anoModelo;
    veiculo.km = km;
    veiculo.direcao = direcao;
    veiculo.cambio = cambio;
    veiculo.motor = motor;
    veiculo.valvula = valvula;
    veiculo.cor = cor;
    veiculo.combustivel = combustivel;
    veiculo.user = GetIt.I<UserManagerStore>().user;

    loading = true;
    try {
      await VeiculoNovoRepository().save(veiculo);
      savedAd = true;
    } catch (e) {
      error = e;
    }
    loading = false;
  }

}