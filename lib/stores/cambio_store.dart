import 'package:mobx/mobx.dart';
import 'package:passarinho_app/model/veiculo/components/cambio/cambio.dart';
import 'package:passarinho_app/repository/veiculo_novo_repository.dart';

part 'cambio_store.g.dart';

class CambiolStore = _CambiolStore with _$CambiolStore;

abstract class _CambiolStore with Store {

  _CambiolStore() {
    _loadCambio();
  }

  ObservableList<Cambio> cambiolList = ObservableList<Cambio>();

  @computed
  List<Cambio> get allCambiolList => List.from(cambiolList)
    ..insert(0, Cambio(id: '*', nome: 'Todas'));

  @action
  void setCambio(List<Cambio> cambio) {
    cambiolList.clear();
    cambiolList.addAll(cambio);
  }

  @observable
  String error;

  @action
  void setError(String value) => error = value;

  Future<void> _loadCambio() async {
    try {
      final cambio = await VeiculoNovoRepository().getListCambio();
      setCambio(cambio);
    } catch (e) {
      setError(e);
    }
  }
}
