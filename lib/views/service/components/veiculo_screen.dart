import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:passarinho_app/common/error_box.dart';
import 'package:passarinho_app/model/veiculo/veiculo.dart';
import 'package:passarinho_app/stores/veiculo_store.dart';

class VeiculoScreen extends StatelessWidget {
  VeiculoScreen({this.showAll = true, this.selected});

  final Veiculo selected;
  final bool showAll;

  final VeiculoStore veiculoStore = GetIt.I<VeiculoStore>();

  @override
  Widget build(BuildContext context) {
    print(veiculoStore.veiculoList);
    return Scaffold(
      backgroundColor: Color(0xff2D2D3A),
      appBar: AppBar(
        flexibleSpace: Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/FAQ screen.png"),
                  fit: BoxFit.fill,
                ))),
        title: const Text('Clientes'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.fromLTRB(32, 12, 32, 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 8,
          child: Observer(builder: (_) {
            if (veiculoStore.error != null) {
              return ErrorBox(
                message: veiculoStore.error,
              );
            } else if (veiculoStore.veiculoList.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              final veiculos = showAll
                  ? veiculoStore.allVeiculoList
                  : veiculoStore.veiculoList;

              return ListView.separated(
                itemCount: veiculos.length,
                separatorBuilder: (_, __) {
                  return Container(
                    height: 5,
                  );
                },
                itemBuilder: (_, index) {
                  final veiculo = veiculos[index];

                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pop(veiculo);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: veiculo.id == selected?.id
                              ? Theme.of(context).primaryColor
                              : null,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'Placa: ${veiculo.placa}, ${veiculo.modelo} - ${veiculo.marca} \nDono do veículo: ${veiculo.cliente?.nome}',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: veiculo.id == selected?.id
                              ? FontWeight.bold
                              : null,
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          }),
        ),
      ),
    );
  }
}
