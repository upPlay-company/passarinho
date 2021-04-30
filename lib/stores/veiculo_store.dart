import 'package:mobx/mobx.dart';
import 'package:passarinho_app/model/veiculo/veiculo.dart';
import 'package:passarinho_app/repository/veiculo_novo_repository.dart';

part 'veiculo_store.g.dart';

class VeiculoStore = _VeiculoStore with _$VeiculoStore;

abstract class _VeiculoStore with Store {

  _VeiculoStore() {
    _loadVeiculo();
  }

  ObservableList<Veiculo> veiculoList = ObservableList<Veiculo>();

  @computed
  List<Veiculo> get allVeiculoList => List.from(veiculoList)
    ..insert(0, Veiculo(id: '*', modelo: 'Nenhum'));

  @action
  void setVeiculo(List<Veiculo> veiculo) {
    veiculoList.clear();
    veiculoList.addAll(veiculo);
  }

  @observable
  String error;

  @action
  void setError(String value) => error = value;

  Future<void> _loadVeiculo() async {
    try {
      final veiculo = await VeiculoNovoRepository().getListVeiculo();
      setVeiculo(veiculo);
    } catch (e) {
      setError(e);
    }
  }

}