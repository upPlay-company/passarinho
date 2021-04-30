import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:passarinho_app/common/error_box.dart';
import 'package:passarinho_app/model/veiculo/veiculo.dart';
import 'package:passarinho_app/stores/veiculo_novo_store.dart';
import 'package:passarinho_app/views/service/components/cliente_field.dart';
import 'package:passarinho_app/views/service/components/direcao_field.dart';
import 'package:passarinho_app/views/service/components/valvula_field.dart';

import 'cambio_field.dart';
import 'cumbustivel_field.dart';

class VeiculoNovo extends StatefulWidget {
  VeiculoNovo({this.veiculo});

  final Veiculo veiculo;

  @override
  _VeiculoNovoState createState() => _VeiculoNovoState(veiculo);
}

class _VeiculoNovoState extends State<VeiculoNovo> {
  _VeiculoNovoState(Veiculo veiculo)
      : editing = veiculo != null,
        store = VeiculoNovoStore(veiculo ?? Veiculo());

  final VeiculoNovoStore store;

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
        title: Text('Adicionar Veiculo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Observer(builder: (_) {
            if (store.loading)
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Card(
                    color: Color(0xff2D2D3A),
                    elevation: 0,
                    child: Column(
                      children: [
                        Text(
                          'Salvando Veiculo',
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
                  ),
                ),
              );
            else
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: ClienteField(store)
                  ),
                  Observer(builder: (_) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: TextFormField(
                        onChanged: store.setPlaca,
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 16),
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            errorText: store.placaError,
                            contentPadding: EdgeInsets.fromLTRB(12, 16, 5, 16),
                            hintText: "Placa *",
                            hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                                color: Colors.black.withAlpha(125)),
                            filled: true,
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    );
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Observer(builder: (_) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: TextFormField(
                            onChanged: store.setMarca,
                            keyboardType: TextInputType.text,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.red,
                            decoration: InputDecoration(
                                errorText: store.marcaError,
                                contentPadding:
                                    EdgeInsets.fromLTRB(12, 16, 5, 16),
                                hintText: "Marca *",
                                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                                    color: Colors.black.withAlpha(125)),
                                filled: true,
                                fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        );
                      }),
                      Observer(builder: (_) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: TextFormField(
                            onChanged: store.setModelo,
                            keyboardType: TextInputType.text,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.red,
                            decoration: InputDecoration(
                                errorText: store.modeloError,
                                contentPadding:
                                    EdgeInsets.fromLTRB(12, 16, 5, 16),
                                hintText: "Modelo *",
                                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                                    color: Colors.black.withAlpha(125)),
                                filled: true,
                                fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        );
                      })
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Observer(builder: (_) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: TextFormField(
                            onChanged: store.setAnoModelo,
                            keyboardType: TextInputType.text,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.red,
                            decoration: InputDecoration(
                                errorText: store.modeloError,
                                contentPadding:
                                    EdgeInsets.fromLTRB(12, 16, 5, 16),
                                hintText: "Ano Modelo *",
                                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                                    color: Colors.black.withAlpha(125)),
                                filled: true,
                                fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        );
                      }),
                      Observer(builder: (_) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: TextFormField(
                            onChanged: store.setKm,
                            keyboardType: TextInputType.text,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.red,
                            decoration: InputDecoration(
                                errorText: store.kmError,
                                contentPadding:
                                    EdgeInsets.fromLTRB(12, 16, 5, 16),
                                hintText: "Km *",
                                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                                    color: Colors.black.withAlpha(125)),
                                filled: true,
                                fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        );
                      })
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [DirecaoField(store), CambioField(store)],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Observer(builder: (_) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: TextFormField(
                            onChanged: store.setMotor,
                            keyboardType: TextInputType.text,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.red,
                            decoration: InputDecoration(
                                errorText: store.motorError,
                                contentPadding:
                                    EdgeInsets.fromLTRB(12, 16, 5, 16),
                                hintText: "Motor *",
                                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                                    color: Colors.black.withAlpha(125)),
                                filled: true,
                                fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        );
                      }),
                      ValvulaField(store)
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Observer(builder: (_) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: TextFormField(
                            onChanged: store.setCor,
                            keyboardType: TextInputType.text,
                            style: TextStyle(fontSize: 16),
                            cursorColor: Colors.red,
                            decoration: InputDecoration(
                                errorText: store.corError,
                                contentPadding:
                                    EdgeInsets.fromLTRB(12, 16, 5, 16),
                                hintText: "Cor *",
                                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                                    color: Colors.black.withAlpha(125)),
                                filled: true,
                                fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        );
                      }),
                      CombustivelField(store)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                      children: [
                        Text('* Campos Obrigatório',
                            style: TextStyle(color: Colors.white, fontSize: 16))
                      ],
                    ),
                  ),
                  Observer(builder: (_) {
                    return ErrorBox(
                      message: store.error,
                    );
                  }),
                  SizedBox(
                    height: 20,
                  ),
                  Observer(builder: (_) {
                    return SizedBox(
                      height: 54,
                      child: GestureDetector(
                        onTap: store.invalidSendPressed,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          color: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          disabledColor: Colors.green[400],
                          child: Text('Salvar', style: TextStyle(fontSize: 16, color: Colors.black),),
                          onPressed: store.sendPressed,
                        ),
                      ),
                    );
                  }),
                  SizedBox(
                    height: 20,
                  ),
                ],
              );
          }),
        ),
      ),
    );
  }
}
