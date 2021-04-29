import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:passarinho_app/stores/cambio_store.dart';
import 'package:passarinho_app/stores/combustivel_store.dart';
import 'package:passarinho_app/stores/direcao_store.dart';
import 'package:passarinho_app/stores/page_store.dart';
import 'package:passarinho_app/stores/user_manager_store.dart';
import 'package:passarinho_app/stores/valvula_store.dart';
import 'package:passarinho_app/views/inicial/inicial_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocation();
  runApp(MyApp());
}

 GetIt location = GetIt.instance;

void setupLocation(){
  location.registerSingleton(UserManagerStore());
  location.registerSingleton(PageStore());
  location.registerSingleton(CambiolStore());
  location.registerSingleton(CombustivelStore());
  location.registerSingleton(ValvulaStore());
  location.registerSingleton(DirecaoStore());
}

Future<void> initializeParse() async {
  await Parse().initialize(
    'tSz5MokTd8ApdSzzSfQ7nZS5MZDJolAd1A6jJI2s',
    'https://parseapi.back4app.com/',
    clientKey: 'XraerousDcxQQ6rNWrIto2p9OVC26MZcw7Ohlfmn',
    debug: false,
    autoSendSessionId: true,
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Passarinho App',
      theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.blue),
      home: InicialScreen(),
    );
  }
}
