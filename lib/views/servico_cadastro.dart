import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:passarinho_app/controller/cliente.dart';

class ServicoCadastro extends StatefulWidget {
  @override
  _ServicoCadastroState createState() => _ServicoCadastroState();
}

class _ServicoCadastroState extends State<ServicoCadastro> {
  _textField(String labelText, onChanged) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: " error",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            flexibleSpace: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/LOGO PASSARINHO.png"),
                        alignment: Alignment.bottomRight),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xffcc),
                        Colors.red[900],
                      ],
                    ))),
          )),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[],
        )),
  );
}
