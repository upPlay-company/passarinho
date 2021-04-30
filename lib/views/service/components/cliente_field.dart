import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:passarinho_app/stores/veiculo_novo_store.dart';

import 'cliente_screen.dart';

class ClienteField extends StatelessWidget {
  ClienteField(this.veiculoNovoStore);

  final VeiculoNovoStore veiculoNovoStore;

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
              title: veiculoNovoStore.cliente == null
                  ? Text(
                'Dono *',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withAlpha(125),
                  fontSize: 16,
                ),
              ) : Text(
                '${veiculoNovoStore.cliente.nome}',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: () async {
                final cliente = await showDialog(
                  context: context,
                  builder: (_) => ClienteScreen(
                    showAll: false,
                    selected: veiculoNovoStore.cliente,
                  ),
                );
                if (cliente != null) {
                  veiculoNovoStore.setCliente(cliente);
                }
              },
            ),
            if (veiculoNovoStore.clienteError != null)
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.red)),
                ),
                padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                child: Text(
                  veiculoNovoStore.clienteError,
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
