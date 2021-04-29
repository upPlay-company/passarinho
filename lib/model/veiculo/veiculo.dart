import 'package:passarinho_app/model/cliente/cliente.dart';
import 'package:passarinho_app/model/user/user.dart';

import 'components/cambio/cambio.dart';
import 'components/combustivel/combustivel.dart';
import 'components/direcao/direcao.dart';
import 'components/valvula/valvula.dart';

class Veiculo {

  String id;
  Cliente cliente;
  String placa;
  String marca;
  String modelo;
  String anoModelo;
  int km;
  Direcao direcao;
  Cambio cambio;
  String motor;
  Valvula valvula;
  String cor;
  Combustivel combustivel;
  User user;

  Veiculo(
      {this.id,
      this.cliente,
      this.placa,
      this.marca,
      this.modelo,
      this.anoModelo,
      this.km,
      this.direcao,
      this.cambio,
      this.motor,
      this.valvula,
      this.cor,
      this.combustivel,
      this.user});

  @override
  String toString() {
    return 'veiculo{id: $id, cliente: $cliente, placa: $placa, marca: $marca, modelo: $modelo, anoModelo: $anoModelo, km: $km, direcao: $direcao, cambio: $cambio, motor: $motor, valvula: $valvula, cor: $cor, combustivel: $combustivel, user: $user}';
  }
}