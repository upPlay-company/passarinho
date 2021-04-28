import 'package:flutter/material.dart';
import 'package:passarinho_app/common/custom_drawer/custom_drawer.dart';
import '../service/servico_cadastro.dart';

class HomeViews extends StatefulWidget {
  @override
  _HomeViewsState createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2D2D3A),
        drawer: CustomDrawer(),
        appBar: AppBar(
              flexibleSpace: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("images/FAQ screen.png"),
                    fit: BoxFit.fill,
                  ))),
              title: Text("Serviços"),
              centerTitle: true,
              actions: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: Icon(Icons.add),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => ServicoCadastro()));
                      }),
                )
              ],
            ),
      body: Container(color: Colors.white,),
    );
  }
}
