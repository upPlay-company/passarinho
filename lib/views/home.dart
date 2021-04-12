import 'package:flutter/material.dart';
import 'package:passarinho_app/views/servico_cadastro.dart';

class HomeViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2D2D3A),
        appBar: AppBar(
          toolbarHeight: 90,
          flexibleSpace: Container(
            child: Center(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: [
                        Image.asset("images/FAQ screen.jpg",
                            fit: BoxFit.fill, width: 360),
                      ],
                    )
                  ]),
            ),
          ),
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
        ));
  }
}
