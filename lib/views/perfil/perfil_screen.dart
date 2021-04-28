import 'package:flutter/material.dart';
import 'package:passarinho_app/common/custom_drawer/custom_drawer.dart';

class PerfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
         flexibleSpace: Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/FAQ screen.png"),
                    fit: BoxFit.fill,
                  ))),
        title: Text('Seu perfil'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
