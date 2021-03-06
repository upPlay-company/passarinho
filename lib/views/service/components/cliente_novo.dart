import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:passarinho_app/common/error_box.dart';
import 'package:passarinho_app/model/cliente/cliente.dart';
import 'package:passarinho_app/stores/cliente_novo_store.dart';

import 'cep_field.dart';

class ClienteNovo extends StatefulWidget {

  ClienteNovo({this.cliente});

  final Cliente cliente;

  @override
  _ClienteNovoState createState() => _ClienteNovoState(cliente);
}

class _ClienteNovoState extends State<ClienteNovo> {

  _ClienteNovoState(Cliente cliente)
      : editing = cliente != null,
        store = ClienteNovoStore(cliente: cliente ?? Cliente());

  final ClienteNovoStore store;

  bool editing;

  @override
  void initState() {
    super.initState();

    when((_) => store.savedAd, () {
        Navigator.of(context).pop(true);
      });
  }

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
        title: Text('Adicionar Cliente'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Observer(builder: (_){
              if (store.loading)
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        'Salvando Cliente',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      )
                    ],
                  ),
                );
              else
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Observer(builder: (_){
                      return Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: TextField(
                          onChanged: store.setNome,
                          keyboardType: TextInputType.text,
                          style: TextStyle(fontSize: 20),
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                              errorText: store.nomeError,
                              contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                              hintText: "Nome *",
                              hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                                  color: Colors.black.withAlpha(125)),
                              filled: true,
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      );
                    }),
                    Observer(builder: (_){
                      return Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: TextField(
                          onChanged: store.setNumero,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 20),
                          cursorColor: Colors.red,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(15),
                            FilteringTextInputFormatter.digitsOnly,
                            TelefoneInputFormatter()
                          ],
                          decoration: InputDecoration(
                              errorText: store.numeroError,
                              contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                              hintText: "Telefone *",
                              hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                                  color: Colors.black.withAlpha(125)),
                              filled: true,
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      );
                    }),
                    Observer(builder: (_){
                      return Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: TextField(
                          onChanged: store.setCpf,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 20),
                          cursorColor: Colors.red,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            CpfInputFormatter()
                          ],
                          decoration: InputDecoration(
                              errorText: store.cpjError,
                              contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                              hintText: "CPF",
                              hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                                  color: Colors.black.withAlpha(125)),
                              filled: true,
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      );
                    }),
                    Observer(builder: (_){
                      return Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: TextField(
                          onChanged: store.setRg,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 20),
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                              errorText: store.rgError,
                              contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                              hintText: "Rg",
                              hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                                  color: Colors.black.withAlpha(125)),
                              filled: true,
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      );
                    }),
                    Observer(builder: (_){
                      return Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: TextField(
                          onChanged: store.setEmail,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(fontSize: 20),
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                              hintText: "email",
                              hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                                  color: Colors.black.withAlpha(125)),
                              filled: true,
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      );
                    }),
                    CepField(store),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          Text('* Campos Obrigat??rio', style: TextStyle(color: Colors.white, fontSize: 16))
                        ],
                      ),
                    ),
                    Observer(builder: (_) {
                      return ErrorBox(
                        message: store.error,
                      );
                    }),
                    SizedBox(height: 20,),
                    Observer(builder: (_) {
                      return SizedBox(
                        height: 54,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          color: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          disabledColor: Colors.green[400],
                          child: Text('Salvar', style: TextStyle(fontSize: 16, color: Colors.black),),
                          onPressed: store.sendPressed,
                        ),
                      );
                    }),
                    SizedBox(height: 20,),
                  ],
                );
            }),
          ),
        ),
      ),
    );
  }
}
