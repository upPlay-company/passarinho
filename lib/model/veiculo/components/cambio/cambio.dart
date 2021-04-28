import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:passarinho_app/repository/table_keys.dart';

class Cambio {

  String id;
  String nome;

  Cambio({this.id, this.nome});

  Cambio.fromParse(ParseObject parseObject)
      : id = parseObject.objectId,
        nome = parseObject.get(keyCambioNome);

  @override
  String toString() {
    return 'Cambio{id: $id, nome: $nome}';
  }

}