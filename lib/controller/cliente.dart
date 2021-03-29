import 'package:mobx/mobx.dart';
part 'cliente.g.dart';

class Cliente = _ClienteBase with _$Cliente;

abstract class _ClienteBase with Store {
  var cliente = Cliente();
}
