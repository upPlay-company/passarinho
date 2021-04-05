import 'package:flutter/material.dart';
import 'package:passarinho_app/stores/login_store.dart';
import 'package:passarinho_app/views/home.dart';
import 'package:passarinho_app/widgets/custom_field.dart';
import 'package:passarinho_app/widgets/custom_icon_buttom.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginStore loginStore = LoginStore();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xff2D2D3A),
          alignment: Alignment.center,
          margin: const EdgeInsets.all(32),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 16,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CustomTextField(
                      hint: 'E-mail',
                      prefix: Icon(Icons.account_circle),
                      textInputType: TextInputType.emailAddress,
                      onChanged: loginStore.setEmail,
                      enabled: true,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomTextField(
                      hint: 'Senha',
                      prefix: Icon(Icons.lock),
                      obscure: true,
                      onChanged: loginStore.setPassord,
                      enabled: true,
                      suffix: CustomIconButton(
                        radius: 32,
                        iconData: Icons.visibility,
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 44,
                      child: ElevatedButton(
                        child: Text('Login'),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => HomeViews()));
                        },
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
