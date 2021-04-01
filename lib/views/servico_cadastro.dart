import 'dart:html';

import 'package:flutter/material.dart';

class ServicoCadastro extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text("Cliente"),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  labelText: " Nome *",
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return ("valor Inválido");
                  }
                  return null;
                },
                onSaved: (val) {},
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    labelText: " CPF ",
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    )),
                validator: (value) {
                  if (value.isEmpty) {
                    return ("valor Inválido");
                  }
                  return null;
                },
                onSaved: (val) {},
              ),
              SizedBox(
                height: 16,
              ),
              Text("Veiculo"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  labelText: " Marca ",
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return ("valor Inválido");
                  }
                  return null;
                },
                onSaved: (val) {},
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Modelo",
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return ("valor Inválido");
                  }
                  return null;
                },
                onSaved: (val) {},
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Placa",
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return ("valor Inválido");
                  }
                  return null;
                },
                onSaved: (val) {},
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Cor",
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return ("valor Inválido");
                  }
                  return null;
                },
                onSaved: (val) {},
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              ),
              Text("Serviços"),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Descrição do Serviço * ",
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return ("valor Inválido");
                  }
                  return null;
                },
                onSaved: (val) {},
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Peças * ",
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return ("valor Inválido");
                  }
                  return null;
                },
                onSaved: (val) {},
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              ),
              Text("Produtos"),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Nome do Produto * ",
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return ("valor Inválido");
                  }
                  return null;
                },
                onSaved: (val) {},
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  if (_formKey.currentState.validate())
                    _formKey.currentState.save();
                },
                child: Text('Confirmar'),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
