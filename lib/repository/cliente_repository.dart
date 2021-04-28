import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:passarinho_app/model/cliente/cliente.dart';
import 'package:passarinho_app/repository/parse_erros.dart';
import 'package:passarinho_app/repository/table_keys.dart';

class ClienteRepository {

  Future<void> save(Cliente cliente) async {
    try {

      final parseUser = ParseUser(cliente.user.userName,
          cliente.user.password, cliente.user.email)
        ..set(keyUserId, cliente.user.id);

      final adObject = ParseObject(keyClienteTable);

      if (cliente.id != null) adObject.objectId = cliente.id;

      final parseAcl = ParseACL(owner: parseUser);
      parseAcl.setPublicReadAccess(allowed: true);
      parseAcl.setPublicWriteAccess(allowed: true);
      adObject.setACL(parseAcl);

      adObject.set<String>(keyClienteNome, cliente.nome);
      adObject.set<String>(keyClienteTelefone, cliente.phone);
      adObject.set<String>(keyClienteCpf, cliente.cpf);
      adObject.set<String>(keyClienteEmail, cliente.email);
      adObject.set<String>(keyClienteRg, cliente.rg);

      adObject.set<String>(keyClienteBairro, cliente.cep.district);
      adObject.set<String>(keyClienteCidade, cliente.cep.cidade.name);
      adObject.set<String>(keyClienteEstado, cliente.cep.uf.initials);
      adObject.set<String>(keyClienteCep, cliente.cep.zipCode);

      adObject.set<ParseUser>(keyClienteOwner, parseUser);

      final response = await adObject.save();

      if (!response.success) {
        return Future.error(ParseErrors.getDescription(response.error.code));
      }
    } catch (e) {
      print(e);
      return Future.error('Falha ao salvar anúncio');
    }
  }

}