import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:passarinho_app/stores/ordem_servico_novo_store.dart';
import 'package:passarinho_app/views/service/components/veiculo_screen.dart';

class VeiculoFieldServico extends StatelessWidget {
  VeiculoFieldServico(this.ordemServicoNovoStore);

  final OrdemServicoNovoStore ordemServicoNovoStore;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
      return Container(
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            ListTile(
              title: ordemServicoNovoStore.veiculo == null
                  ? Text(
                'Escolha um Veiculo *',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withAlpha(125),
                  fontSize: 16,
                ),
              ) : Text(
                '${ordemServicoNovoStore.veiculo.modelo} - ${ordemServicoNovoStore.veiculo.marca}, Placa: ${ordemServicoNovoStore.veiculo.placa}',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: () async {
                final veiculo = await showDialog(
                  context: context,
                  builder: (_) => VeiculoScreen(
                    showAll: false,
                    selected: ordemServicoNovoStore.veiculo,
                  ),
                );
                if (veiculo != null) {
                  ordemServicoNovoStore.setVeiculo(veiculo);
                }
              },
            ),
            if (ordemServicoNovoStore.veiculoError != null)
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.red)),
                ),
                padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                child: Text(
                  ordemServicoNovoStore.veiculoError,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                ),
              )
          ],
        ),
      );
    });
  }
}
