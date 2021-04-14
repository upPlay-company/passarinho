import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:passarinho_app/stores/login_store.dart';
import 'package:passarinho_app/views/home.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginStore loginStore = LoginStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: Color(0xff2D2D3A)),
      padding: EdgeInsets.all(20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 38),
                child: Image.asset("images/LOGO PASSARINHO.png",
                    width: 200, height: 250),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "Email",
                    filled: true,
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32)),
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "Senha",
                    filled: true,
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32))),
              ),
              Observer(builder: (_) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                  child: ElevatedButton(
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          textStyle: TextStyle(
                            fontSize: 20,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32))),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HomeViews()));
                      }),
                );
              }),
            ],
          ),
        ),
      ),
    ));
  }
}
