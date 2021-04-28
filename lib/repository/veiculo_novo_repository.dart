import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:passarinho_app/model/veiculo/components/cambio/cambio.dart';
import 'package:passarinho_app/model/veiculo/components/combustivel/combustivel.dart';
import 'package:passarinho_app/model/veiculo/components/direcao/direcao.dart';
import 'package:passarinho_app/model/veiculo/components/valvula/valvula.dart';
import 'package:passarinho_app/repository/parse_erros.dart';
import 'package:passarinho_app/repository/table_keys.dart';

class VeiculoNovoRepository {

  Future<List<Direcao>> getListDirecao() async {
    final queryBuilder = QueryBuilder(ParseObject(keyDirecaoTable))
      ..orderByAscending(keyDirecaoNome);

    final response = await queryBuilder.query();

    if (response.success) {
      return response.results.map((p) => Direcao.fromParse(p)).toList();
    } else {
      throw ParseErrors.getDescription(response.error.code);
    }
  }

  Future<List<Combustivel>> getListCombustivel() async {
    final queryBuilder = QueryBuilder(ParseObject(keyCombustivelTable))
      ..orderByAscending(keyCombustivelNome);

    final response = await queryBuilder.query();

    if (response.success) {
      return response.results.map((p) => Combustivel.fromParse(p)).toList();
    } else {
      throw ParseErrors.getDescription(response.error.code);
    }
  }

  Future<List<Cambio>> getListCambio() async {
    final queryBuilder = QueryBuilder(ParseObject(keyCambioTable))
      ..orderByAscending(keyCambioNome);

    final response = await queryBuilder.query();

    if (response.success) {
      return response.results.map((p) => Cambio.fromParse(p)).toList();
    } else {
      throw ParseErrors.getDescription(response.error.code);
    }
  }

  Future<List<Valvula>> getListValvula() async {
    final queryBuilder = QueryBuilder(ParseObject(keyValvulaTable))
      ..orderByAscending(keyValvulaNumero);

    final response = await queryBuilder.query();

    if (response.success) {
      return response.results.map((p) => Valvula.fromParse(p)).toList();
    } else {
      throw ParseErrors.getDescription(response.error.code);
    }
  }

}