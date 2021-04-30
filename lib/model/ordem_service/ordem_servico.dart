import 'package:passarinho_app/model/cliente/cliente.dart';
import 'package:passarinho_app/model/veiculo/veiculo.dart';

class OrdemServico {

  String id;
  Cliente cliente;
  Veiculo veiculo;
  //servico 1
  String service1;
  //servico 2
  String service2;
  //servico 3
  String service3;
  //servico 4
  String service4;

  //peca 1
  String peca1;
  //peca 2
  String peca2;
  //peca 3
  String peca3;
  //peca 4
  String peca4;

  OrdemServico({this.id,
      this.cliente,
      this.veiculo,
      this.service1,
      this.service2,
      this.service3,
      this.service4,
      this.peca1,
      this.peca2,
      this.peca3,
      this.peca4});

  @override
  String toString() {
    return 'OrdemServico{id: $id, cliente: $cliente, veiculo: $veiculo, service1: $service1, service2: $service2, service3: $service3, service4: $service4, peca1: $peca1, peca2: $peca2, peca3: $peca3, peca4: $peca4}';
  }
}