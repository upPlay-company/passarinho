import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:passarinho_app/stores/veiculo_novo_store.dart';

import 'direcao_screen.dart';

class DirecaoField extends StatelessWidget {
  DirecaoField(this.veiculoNovoStore);

  final VeiculoNovoStore veiculoNovoStore;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
      return Container(
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            ListTile(
              title: veiculoNovoStore.direcao == null
                  ? Text(
                'Direção *',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withAlpha(125),
                  fontSize: 16,
                ),
              ) : Text(
                '${veiculoNovoStore.direcao.nome}',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: () async {
                final direcao = await showDialog(
                  context: context,
                  builder: (_) => DirecaoScreen(
                    showAll: false,
                    selected: veiculoNovoStore.direcao,
                  ),
                );
                if (direcao != null) {
                  veiculoNovoStore.setDirecao(direcao);
                }
              },
            ),
            if (veiculoNovoStore.direcaoError != null)
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.red)),
                ),
                padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                child: Text(
                  veiculoNovoStore.direcaoError,
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
