import 'package:flutter/material.dart';
import 'package:passarinho_app/screens/servico_cadastro.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/LOGO PASSARINHO.png"),
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
          title: Text('Serviços'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.add_rounded),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => ServicoCadastro()));
              },
            )
          ]),
    );
  }
}
