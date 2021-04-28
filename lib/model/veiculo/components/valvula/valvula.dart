import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:passarinho_app/repository/table_keys.dart';

class Valvula {

  String id;
  int numero;

  Valvula({this.id, this.numero});

  Valvula.fromParse(ParseObject parseObject)
      : id = parseObject.objectId,
        numero = parseObject.get(keyValvulaNumero);

  @override
  String toString() {
    return 'Valvula{id: $id, numero: $numero}';
  }

}