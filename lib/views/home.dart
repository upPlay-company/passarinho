import 'package:flutter/material.dart';
import 'package:passarinho_app/views/servico_cadastro.dart';

class HomeViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2D2D3A),
        appBar: PreferredSize(
            preferredSize: Size(100, 80),
            child: AppBar(
              flexibleSpace: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("images/FAQ screen.jpg"),
                    fit: BoxFit.fill,
                  ))),
              title: Text("Adicionar"),
              centerTitle: true,
              actions: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => ServicoCadastro()));
                      }),
                )
              ],
            )));
  }
}
