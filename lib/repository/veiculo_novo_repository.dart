import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:passarinho_app/model/veiculo/components/cambio/cambio.dart';
import 'package:passarinho_app/model/veiculo/components/combustivel/combustivel.dart';
import 'package:passarinho_app/model/veiculo/components/direcao/direcao.dart';
import 'package:passarinho_app/model/veiculo/components/valvula/valvula.dart';
import 'package:passarinho_app/model/veiculo/veiculo.dart';
import 'package:passarinho_app/repository/parse_erros.dart';
import 'package:passarinho_app/repository/table_keys.dart';

class VeiculoNovoRepository {

  Future<void> save(Veiculo veiculo) async {
    try {

      final parseUser = ParseUser(veiculo.user.userName,
          veiculo.user.password, veiculo.user.email)
        ..set(keyUserId, veiculo.user.id);

      final adObject = ParseObject(keyVeiculoTable);

      if (veiculo.id != null) adObject.objectId = veiculo.id;

      final parseAcl = ParseACL(owner: parseUser);
      parseAcl.setPublicReadAccess(allowed: true);
      parseAcl.setPublicWriteAccess(allowed: true);
      adObject.setACL(parseAcl);

      adObject.set<ParseObject>(keyClienteNome,
          ParseObject(keyClienteTable)..set(keyClienteId, veiculo.cliente.id));

      adObject.set<String>(keyVeiculoPlaca, veiculo.placa);
      adObject.set<String>(keyVeiculoMarca, veiculo.marca);
      adObject.set<String>(keyVeiculoModelo, veiculo.modelo);
      adObject.set<String>(keyVeiculoAnoModelo, veiculo.anoModelo);

      adObject.set<int>(keyVeiculoKm, veiculo.km);
      adObject.set<String>(keyVeiculoMotor, veiculo.motor);
      adObject.set<String>(keyVeiculoCor, veiculo.cor);
      adObject.set<ParseObject>(keyDirecaoNome,
          ParseObject(keyDirecaoTable)..set(keyDirecaoId, veiculo.direcao.id));
      adObject.set<ParseObject>(keyCambioNome,
          ParseObject(keyCambioTable)..set(keyCambioId, veiculo.cambio.id));
      adObject.set<ParseObject>(keyValvulaNumero,
          ParseObject(keyValvulaTable)..set(keyValvulaId, veiculo.valvula.id));
      adObject.set<ParseObject>(keyCombustivelNome,
          ParseObject(keyCombustivelTable)..set(keyCombustivelId, veiculo.combustivel.id));

      final response = await adObject.save();

      if (!response.success) {
        return Future.error(ParseErrors.getDescription(response.error.code));
      }
    } catch (e) {
      print(e);
      return Future.error('Falha ao salvar anúncio');
    }
  }


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