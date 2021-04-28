import 'package:mobx/mobx.dart';
import 'package:passarinho_app/model/veiculo/components/direcao/direcao.dart';
import 'package:passarinho_app/repository/veiculo_novo_repository.dart';

part 'direcao_store.g.dart';

class DirecaoStore = _DirecaoStore with _$DirecaoStore;

abstract class _DirecaoStore with Store {

  _DirecaoStore() {
    _loadDirecao();
  }

  ObservableList<Direcao> direcaoList = ObservableList<Direcao>();

  @computed
  List<Direcao> get allDirecaoList => List.from(direcaoList)
    ..insert(0, Direcao(id: '*', nome: 'Todas'));

  @action
  void setDirecao(List<Direcao> direcao) {
    direcaoList.clear();
    direcaoList.addAll(direcao);
  }

  @observable
  String error;

  @action
  void setError(String value) => error = value;

  Future<void> _loadDirecao() async {
    try {
      final direcao = await VeiculoNovoRepository().getListDirecao();
      setDirecao(direcao);
    } catch (e) {
      setError(e);
    }
  }
}
