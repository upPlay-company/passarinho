import 'package:flutter/material.dart';

class ServicoConfirmado extends StatelessWidget {
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
                          alignment: Alignment.bottomLeft),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color(0xffcc),
                          Colors.red[900],
                        ],
                      ))),
              title: Text('01'),
              centerTitle: true,
            )));
  }
}
