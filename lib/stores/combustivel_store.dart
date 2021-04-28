import 'package:mobx/mobx.dart';
import 'package:passarinho_app/model/veiculo/components/combustivel/combustivel.dart';
import 'package:passarinho_app/repository/veiculo_novo_repository.dart';

part 'combustivel_store.g.dart';

class CombustivelStore = _CombustivelStore with _$CombustivelStore;

abstract class _CombustivelStore with Store {

  _CombustivelStore() {
    _loadCombustivel();
  }

  ObservableList<Combustivel> combustivelList = ObservableList<Combustivel>();

  @computed
  List<Combustivel> get allCombustivelList => List.from(combustivelList)
    ..insert(0, Combustivel(id: '*', nome: 'Todas'));

  @action
  void setCombustivel(List<Combustivel> combustivel) {
    combustivelList.clear();
    combustivelList.addAll(combustivel);
  }

  @observable
  String error;

  @action
  void setError(String value) => error = value;

  Future<void> _loadCombustivel() async {
    try {
      final combustivel = await VeiculoNovoRepository().getListCombustivel();
      setCombustivel(combustivel);
    } catch (e) {
      setError(e);
    }
  }
}
