import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:passarinho_app/repository/table_keys.dart';

class Direcao {

  String id;
  String nome;

  Direcao({this.id, this.nome});

  Direcao.fromParse(ParseObject parseObject)
      : id = parseObject.objectId,
        nome = parseObject.get(keyDirecaoNome);

  @override
  String toString() {
    return 'Direcao{id: $id, nome: $nome}';
  }
}