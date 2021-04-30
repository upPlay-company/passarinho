import 'package:mobx/mobx.dart';
import 'package:passarinho_app/model/cliente/cliente.dart';
import 'package:passarinho_app/repository/cliente_repository.dart';

part 'cliente_store.g.dart';

class ClienteStore = _ClienteStore with _$ClienteStore;

abstract class _ClienteStore with Store {

  _ClienteStore() {
    _loadCliente();
  }

  ObservableList<Cliente> clienteList = ObservableList<Cliente>();

  @computed
  List<Cliente> get allClienteList => List.from(clienteList)
    ..insert(0, Cliente(id: '*', nome: 'Nenhum'));

  @action
  void setCliente(List<Cliente> cliente) {
    clienteList.clear();
    clienteList.addAll(cliente);
  }

  @observable
  String error;

  @action
  void setError(String value) => error = value;

  Future<void> _loadCliente() async {
    try {
      final cliente = await ClienteRepository().getListCliente();
      setCliente(cliente);
    } catch (e) {
      setError(e);
    }
  }

}