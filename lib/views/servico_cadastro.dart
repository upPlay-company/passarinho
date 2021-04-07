import 'package:flutter/material.dart';
import 'package:passarinho_app/controller/cadastro_controller.dart';
import 'package:passarinho_app/views_models/cadastro_view_model.dart';

class ServicoCadastro extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _controller = new CadastroController();
  var model = new CadastroViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2D2D3A),
        appBar: AppBar(
          toolbarHeight: 90,
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "images/LOGO PASSARINHO.png",
                      ),
                      alignment: Alignment.bottomRight),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: <Color>[
                      Color(0xffcc),
                      Colors.red,
                    ],
                  ))),
          title: Text("Adicionar"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Form(
              key: _formKey,
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
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  ),
                  TextFormField(
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: "* Nome",
                      //errorText: Cliente.nameError,
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return ("valor Inválido");
                      }
                      return null;
                    },
                    onSaved: (val) {
                      model.name = val;
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        labelText: " CPF ",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        )),
                    validator: (value) {
                      if (value.isEmpty) {
                        return ("valor Inválido");
                      }
                      return null;
                    },
                    onSaved: (val) {
                      model.cpf = val;
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Veiculo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      labelText: " Marca ",
                      labelStyle: TextStyle(
                        color: Colors.white,
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
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Modelo",
                      labelStyle: TextStyle(
                        color: Colors.white,
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
                  SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Placa",
                      labelStyle: TextStyle(
                        color: Colors.white,
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
                  SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: "Cor",
                      labelStyle: TextStyle(
                        color: Colors.white,
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
                  Text(
                    "Serviços",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hoverColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Descrição do Serviço * ",
                      labelStyle: TextStyle(
                        color: Colors.white,
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
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Peças * ",
                      labelStyle: TextStyle(
                        color: Colors.white,
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
                  Text(
                    "Produtos",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Nome do Produto * ",
                      labelStyle: TextStyle(
                        color: Colors.white,
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
                      child: Text('Confirmar'),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                        }
                        print(model.name);
                        print(model.cpf);

                        _controller.create(model);
                      }),
                ],
              ),
            ),
          ),
        ));
  }
}
