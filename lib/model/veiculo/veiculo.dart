import 'package:passarinho_app/model/cliente/cliente.dart';

import 'components/cambio/cambio.dart';
import 'components/combustivel/combustivel.dart';
import 'components/direcao/direcao.dart';
import 'components/valvula/valvula.dart';

// ignore: camel_case_types
class veiculo {

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

  veiculo(
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
      this.combustivel});

  @override
  String toString() {
    return 'veiculo{id: $id, cliente: $cliente, placa: $placa, marca: $marca, modelo: $modelo, anoModelo: $anoModelo, km: $km, direcao: $direcao, cambio: $cambio, motor: $motor, valvula: $valvula, cor: $cor, combustivel: $combustivel}';
  }
}