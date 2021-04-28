import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:passarinho_app/common/error_box.dart';
import 'package:passarinho_app/stores/login_store.dart';
import 'package:passarinho_app/stores/user_manager_store.dart';
import '../home/home.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  LoginStore loginStore = LoginStore();

  final UserManagerStore userManagerStore = GetIt.I<UserManagerStore>();

  @override
  void initState() {
    super.initState();

    when((_) => userManagerStore.user != null, () {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomeViews()));
    });
  }

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
                  Observer(builder: (_){
                    return Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        onChanged: loginStore.setEmail,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          errorText: loginStore.emailError,
                          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                          hintText: "Email",
                          filled: true,
                          fillColor: Colors.grey,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32)),
                        ),
                      ),
                    );
                  }),
                  Observer(builder: (_){
                    return TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 20),
                      obscureText: true,
                      onChanged: loginStore.setPassword,
                      decoration: InputDecoration(
                          errorText: loginStore.passwordError,
                          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                          hintText: "Senha",
                          filled: true,
                          fillColor: Colors.grey,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32))),
                    );
                  }),
                  Observer(builder: (_) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SizedBox(
                        height: 54,
                        child: ElevatedButton(
                            child: loginStore.loading
                                ? CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(
                                Colors.white
                            ),
                            ): Text('Login'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                textStyle: TextStyle(
                                  fontSize: 20,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32))),
                              onPressed: loginStore.loginPressed,
                      ),
                    ));
                  }),
                Observer(builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: ErrorBox(
                      message: loginStore.error,
                    ),
                  );
                }),
            ],
          ),
        ),
      ),
    ));
  }
}
