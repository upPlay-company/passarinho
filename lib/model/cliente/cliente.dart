import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:passarinho_app/model/cep/address.dart';
import 'package:passarinho_app/model/cep/city.dart';
import 'package:passarinho_app/model/cep/uf.dart';
import 'package:passarinho_app/model/user/user.dart';
import 'package:passarinho_app/repository/table_keys.dart';

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

  Cliente.fromParse(ParseObject parseObject)
      : id = parseObject.objectId,
        nome = parseObject.get(keyClienteNome),
        phone = parseObject.get(keyClienteTelefone),
        cpf = parseObject.get(keyClienteCpf),
        rg = parseObject.get(keyClienteRg),
        email = parseObject.get(keyClienteEmail),
        cep = Address(
          district: parseObject.get<String>(keyClienteBairro),
          cidade: City(name: parseObject.get<String>(keyClienteCidade)),
          zipCode: parseObject.get<String>(keyClienteCep),
          uf: UF(initials: parseObject.get<String>(keyClienteEstado)),
          logradouro: parseObject.get<String>(keyClienteRua)
        );

  @override
  String toString() {
    return 'Cliente{id: $id, nome: $nome, phone: $phone, cpf: $cpf, rg: $rg, email: $email, cep: $cep, user: $user}';
  }
}