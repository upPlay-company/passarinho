import 'package:mobx/mobx.dart';
import 'package:passarinho_app/model/veiculo/components/valvula/valvula.dart';
import 'package:passarinho_app/repository/veiculo_novo_repository.dart';

part 'valvula_store.g.dart';

class ValvulaStore = _ValvulaStore with _$ValvulaStore;

abstract class _ValvulaStore with Store {

  _ValvulaStore() {
    _loadValvula();
  }

  ObservableList<Valvula> valvulaList = ObservableList<Valvula>();

  @computed
  List<Valvula> get allValvulaList => List.from(valvulaList)
    ..insert(0, Valvula(id: '*', numero: 0));

  @action
  void setValvula(List<Valvula> valvula) {
    valvulaList.clear();
    valvulaList.addAll(valvula);
  }

  @observable
  String error;

  @action
  void setError(String value) => error = value;

  Future<void> _loadValvula() async {
    try {
      final valvula = await VeiculoNovoRepository().getListValvula();
      setValvula(valvula);
    } catch (e) {
      setError(e);
    }
  }
}
