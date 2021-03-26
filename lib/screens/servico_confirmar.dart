import 'package:flutter/material.dart';

class ServicoConfirmado extends StatelessWidget {
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
      title: Text('teste1'),
    ));
  }
}
