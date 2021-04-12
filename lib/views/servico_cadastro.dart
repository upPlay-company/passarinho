import 'package:flutter/material.dart';
import 'package:passarinho_app/stores/servico_store.dart';
import 'package:passarinho_app/views/servico_confirmar.dart';

class ServicoCadastro extends StatefulWidget {
  @override
  _ServicoCadastroState createState() => _ServicoCadastroState();
}

class _ServicoCadastroState extends State<ServicoCadastro> {
  ServicoStore servicoStore = ServicoStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2D2D3A),
        appBar: AppBar(
          toolbarHeight: 90,
          flexibleSpace: Container(
            child: Center(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Stack(
                      children: [
                        Image.asset(
                          "images/FAQ screen.jpg",
                          fit: BoxFit.fill,
                          width: 360,
                        ),
                      ],
                    )
                  ]),
            ),
          ),
          title: Text("Adicionar"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              child: Column(
                children: <Widget>[
                  Text(
                    "Cliente",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: TextField(
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 20),
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                          hintText: "* Nome",
                          filled: true,
                          fillColor: Colors.grey,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32))),
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "CPF",
                        filled: true,
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                  Text(
                    "Veiculo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Marca",
                        filled: true,
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                  Divider(),
                  TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Modelo",
                        filled: true,
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                  Divider(),
                  TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Placa",
                        filled: true,
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                  Divider(),
                  TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Cor",
                        filled: true,
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                  Text(
                    "Serviços",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Descrição do Serviço",
                        filled: true,
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                  Divider(),
                  TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Peças",
                        filled: true,
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32))),
                  ),
                  Divider(),
                  Text(
                    "Valor total :",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    child: ElevatedButton(
                        child: Text('Confirmar'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            textStyle: TextStyle(
                              fontSize: 20,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32))),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => ServicoConfirmado()));
                        }),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
