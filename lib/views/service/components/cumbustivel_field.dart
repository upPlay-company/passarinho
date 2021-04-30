import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:passarinho_app/stores/veiculo_novo_store.dart';

import 'combustivel_screen.dart';

class CombustivelField extends StatelessWidget {
  CombustivelField(this.veiculoNovoStore);

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
              title: veiculoNovoStore.combustivel == null
                  ? Text(
                'Combustível *',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withAlpha(125),
                  fontSize: 15,
                ),
              ) : Text(
                '${veiculoNovoStore.combustivel.nome}',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: () async {
                final combustivel = await showDialog(
                  context: context,
                  builder: (_) => CombustivelScreen(
                    showAll: false,
                    selected: veiculoNovoStore.combustivel,
                  ),
                );
                if (combustivel != null) {
                  veiculoNovoStore.setCombustivel(combustivel);
                }
              },
            ),
            if (veiculoNovoStore.combustivelError != null)
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.red)),
                ),
                padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                child: Text(
                  veiculoNovoStore.combustivelError,
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
