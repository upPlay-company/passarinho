import 'package:passarinho_app/models/servico_model.dart';

class CadastroController {
  Future<Cliente> createAcconunt() async {
    await Future.delayed(new Duration(milliseconds: 1500));
    return new Cliente();
  }
}
