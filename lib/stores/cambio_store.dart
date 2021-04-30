import 'package:mobx/mobx.dart';
import 'package:passarinho_app/model/veiculo/components/cambio/cambio.dart';
import 'package:passarinho_app/repository/veiculo_novo_repository.dart';

part 'cambio_store.g.dart';

class CambioStore = _CambioStore with _$CambioStore;

abstract class _CambioStore with Store {

  _CambioStore() {
    _loadCambio();
  }

  ObservableList<Cambio> cambioList = ObservableList<Cambio>();

  @computed
  List<Cambio> get allCambioList => List.from(cambioList)
    ..insert(0, Cambio(id: '*', nome: 'Todas'));

  @action
  void setCambio(List<Cambio> cambio) {
    cambioList.clear();
    cambioList.addAll(cambio);
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
