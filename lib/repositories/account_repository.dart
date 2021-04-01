import 'package:passarinho_app/models/servico_model.dart';
import 'package:passarinho_app/views_models/cadastro_view_model.dart';

class AccountRepository {
  Future<Cliente> createAcconunt(CadastroViewModel model) async {
    await Future.delayed(new Duration(milliseconds: 1500));
    return new Cliente();
  }
}
