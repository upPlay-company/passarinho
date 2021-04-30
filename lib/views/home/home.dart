import 'package:flutter/material.dart';
import 'package:passarinho_app/common/custom_drawer/custom_drawer.dart';
import 'package:passarinho_app/views/service/servico_cadastro.dart';

class HomeViews extends StatefulWidget {
  @override
  _HomeViewsState createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => ServicoCadastroScreen()));
          },
          child: CircleAvatar(
            backgroundImage: AssetImage("images/FAQ screen.png"),
            maxRadius: 50,
            child: Icon(Icons.add),
          ),
        ),
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
            ),
      body: Container(color: Colors.white,),
    );
  }
}
