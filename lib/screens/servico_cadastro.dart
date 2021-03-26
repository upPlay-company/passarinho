import 'package:flutter/material.dart';

class ServicoCadastro extends StatefulWidget {
  @override
  _ServicoCadastroState createState() => _ServicoCadastroState();
}

class _ServicoCadastroState extends State<ServicoCadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/Logo PASSARINHO.png"),
                  fit: BoxFit.fill,
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xffcc),
                    Colors.red[900],
                  ],
                ))),
        title: Text('Adicionar'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(24),
      ),
    );
  }
}
