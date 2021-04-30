import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:passarinho_app/stores/cambio_store.dart';
import 'package:passarinho_app/stores/cliente_store.dart';
import 'package:passarinho_app/stores/combustivel_store.dart';
import 'package:passarinho_app/stores/direcao_store.dart';
import 'package:passarinho_app/stores/page_store.dart';
import 'package:passarinho_app/stores/user_manager_store.dart';
import 'package:passarinho_app/stores/valvula_store.dart';
import 'package:passarinho_app/views/Login/login_view.dart';
import 'package:passarinho_app/views/base/base_screen.dart';
import 'package:passarinho_app/views/inicial/inicial_screen.dart';
import 'package:passarinho_app/views/service/servico_cadastro.dart';

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
  location.registerSingleton(CambioStore());
  location.registerSingleton(CombustivelStore());
  location.registerSingleton(ValvulaStore());
  location.registerSingleton(DirecaoStore());
  location.registerSingleton(ClienteStore());
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

  final UserManagerStore userManagerStore = location<UserManagerStore>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Passarinho App',
      theme: ThemeData(
          primaryColor: Colors.red,
          accentColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'inicial',
      onGenerateRoute: (settings){
        switch(settings.name){
          case '/login':
            return MaterialPageRoute(
              builder: (_) => LoginView(),
            );
          case '/base':
            return MaterialPageRoute(
              builder: (_) => BaseScreen(),
            );
          case '/servico_cadastro':
            return MaterialPageRoute(
              builder: (_) => ServicoCadastroScreen(),
            );
          case '/inicial':
          default:
            if(userManagerStore.isLoggedIn)
              return MaterialPageRoute(
                builder: (_) => BaseScreen(),
              );
            else
              return MaterialPageRoute(
                builder: (_) => InicialScreen(),
              );
        }
      },
    );
  }
}
