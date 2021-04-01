import 'package:flutter/material.dart';
import 'package:passarinho_app/views/servico_cadastro.dart';

class HomeViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
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
                        Colors.red,
                      ],
                    ))),
            title: Text('Serviços'),
            centerTitle: true,
            backgroundColor: Colors.red,
            actions: [
              IconButton(
                icon: Icon(Icons.add_rounded),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => ServicoCadastro()));
                },
              )
            ]),
      ),
    );
  }
}
