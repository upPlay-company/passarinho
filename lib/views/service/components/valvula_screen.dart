import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:passarinho_app/common/error_box.dart';
import 'package:passarinho_app/model/veiculo/components/valvula/valvula.dart';
import 'package:passarinho_app/stores/valvula_store.dart';

class ValvulaScreen extends StatelessWidget {
  ValvulaScreen({this.showAll = true, this.selected});

  final Valvula selected;
  final bool showAll;

  final ValvulaStore valvulaStore = GetIt.I<ValvulaStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2D2D3A),
      appBar: AppBar(
        flexibleSpace: Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/FAQ screen.png"),
                  fit: BoxFit.fill,
                ))),
        title: const Text('Valvula'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.fromLTRB(32, 12, 32, 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 8,
          child: Observer(builder: (_) {
            if (valvulaStore.error != null) {
              return ErrorBox(
                message: valvulaStore.error,
              );
            } else if (valvulaStore.valvulaList.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              final valvulas = showAll
                  ? valvulaStore.allValvulaList
                  : valvulaStore.valvulaList;

              return ListView.separated(
                itemCount: valvulas.length,
                separatorBuilder: (_, __) {
                  return Container(
                    height: 5,
                  );
                },
                itemBuilder: (_, index) {
                  final valvula = valvulas[index];

                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pop(valvula);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: valvula.id == selected?.id
                              ? Theme.of(context).primaryColor
                              : null,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        '${valvula.numero}',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: valvula.id == selected?.id
                              ? FontWeight.bold
                              : null,
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          }),
        ),
      ),
    );
  }
}
