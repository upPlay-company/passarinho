import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:passarinho_app/common/error_box.dart';
import 'package:passarinho_app/model/cliente/cliente.dart';
import 'package:passarinho_app/stores/cambio_store.dart';
import 'package:passarinho_app/stores/cliente_store.dart';

class ClienteScreen extends StatelessWidget {
  ClienteScreen({this.showAll = true, this.selected});

  final Cliente selected;
  final bool showAll;

  final ClienteStore clienteStore = GetIt.I<ClienteStore>();

  @override
  Widget build(BuildContext context) {
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
            if (clienteStore.error != null) {
              return ErrorBox(
                message: clienteStore.error,
              );
            } else if (clienteStore.clienteList.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              final clientes = showAll
                  ? clienteStore.allClienteList
                  : clienteStore.clienteList;

              return ListView.separated(
                itemCount: clientes.length,
                separatorBuilder: (_, __) {
                  return Container(
                    height: 5,
                  );
                },
                itemBuilder: (_, index) {
                  final cliente = clientes[index];

                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pop(cliente);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: cliente.id == selected?.id
                              ? Theme.of(context).primaryColor
                              : null,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        cliente.nome,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: cliente.id == selected?.id
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
