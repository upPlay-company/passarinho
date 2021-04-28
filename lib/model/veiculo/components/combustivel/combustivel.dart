import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:passarinho_app/repository/table_keys.dart';

class Combustivel {

  String id;
  String nome;

  Combustivel({this.id, this.nome});

  Combustivel.fromParse(ParseObject parseObject)
      : id = parseObject.objectId,
        nome = parseObject.get(keyCombustivelNome);

  @override
  String toString() {
    return 'Cumbustivel{id: $id, nome: $nome}';
  }

}