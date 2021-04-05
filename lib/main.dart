import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:passarinho_app/views/Login/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();

  runApp(MyApp());
}

Future<void> initializeParse() async {
  await Parse().initialize(
    'XcXQHXqxtHcOp0ue5BYh7bU4c5vzHTabMKkrpHGO',
    'https://parseapi.back4app.com/',
    clientKey: 'UtpNGkbv6eAOkpahaqzrRWvhMGouI1Jrs04TFDqJ',
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
      theme: ThemeData(primarySwatch: Colors.red),
      home: LoginView(),
    );
  }
}
