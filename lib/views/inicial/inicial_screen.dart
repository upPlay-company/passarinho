import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:passarinho_app/stores/user_manager_store.dart';
import 'package:passarinho_app/views/Login/login_view.dart';
import 'package:passarinho_app/views/base/base_screen.dart';

class InicialScreen extends StatefulWidget {
  @override
  _InicialScreenState createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {

  final UserManagerStore userManagerStore = GetIt.I<UserManagerStore>();

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 4)).then((_){
      if(userManagerStore.isLoggedIn)
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BaseScreen()));
      else
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/LOGO PASSARINHO.png'),
                    )
                ),
              ),
            ),
            Text('DESENVOLVIDO POR', style: TextStyle(color: Colors.white, fontSize: 8),),
            Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/Logo Upplay Branco.png'),
                  )
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}

