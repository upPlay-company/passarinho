import 'package:passarinho_app/controller/cadastro_controller.dart';
import 'package:passarinho_app/models/servico_model.dart';
import 'package:passarinho_app/views/servico_cadastro.dart';

class AccountRepository {
  Future<Cliente> createAcconunt() async {
    await Future.delayed(new Duration(milliseconds: 1500));
    return new Cliente();
  }
}
