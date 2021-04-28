import 'package:passarinho_app/model/cep/address.dart';
import 'package:passarinho_app/model/user/user.dart';

class Cliente {

  Cliente({this.id, this.nome, this.phone, this.cpf, this.rg, this.email, this.cep, this.user});

  String id;
  String nome;
  String phone;
  String cpf;
  String rg;
  String email;
  Address cep;
  User user;

  @override
  String toString() {
    return 'Cliente{id: $id, nome: $nome, phone: $phone, cpf: $cpf, rg: $rg, email: $email, cep: $cep, user: $user}';
  }
}