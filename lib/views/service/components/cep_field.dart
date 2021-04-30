import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:passarinho_app/stores/cep_store.dart';
import 'package:passarinho_app/stores/cliente_novo_store.dart';

class CepField extends StatelessWidget {

  CepField(this.clienteNovoStore) : cepStore = clienteNovoStore.cepStore;

  final ClienteNovoStore clienteNovoStore;
  final CepStore cepStore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Observer(builder: (_){
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: TextFormField(
              onChanged: cepStore.setCep,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 20),
              cursorColor: Colors.red,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                CepInputFormatter(),
              ],
              decoration: InputDecoration(
                  errorText: clienteNovoStore.addressError,
                  contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                  hintText: "CEP",
                  hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                      color: Colors.black.withAlpha(125)),
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          );
        },
        ),
        Observer(builder: (_) {
          if (cepStore.address == null &&
              cepStore.error == null &&
              !cepStore.loading)
            return Container();
          else if (cepStore.address == null && cepStore.error == null)
            return LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Theme.of(context).primaryColor),
              backgroundColor: Colors.transparent,
            );
          else if (cepStore.error != null)
            return Container(
              decoration: BoxDecoration(
                color: Colors.red.withAlpha(100),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10)
              ),
              height: 50,
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: Text(
                cepStore.error,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
            );
          else {
            final a = cepStore.address;
            return Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withAlpha(150),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10)
              ),
              height: 50,
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: Text(
                'Localização: ${a.logradouro}, Bairro ${a.district}, ${a.cidade.name} - ${a.uf.initials}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            );
          }
        }),
      ],
    );
  }
}
