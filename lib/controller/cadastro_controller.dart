import 'package:passarinho_app/models/servico_model.dart';
import 'package:passarinho_app/repositories/account_repository.dart';
import 'package:passarinho_app/views_models/cadastro_view_model.dart';

class CadastroController {
  AccountRepository repository;

  CadastroController() {
    repository = new AccountRepository();
  }
  Future<Cliente> create(CadastroViewModel model) async {
    var cliente = await repository.createAcconunt(model);
    return cliente;
  }
}
