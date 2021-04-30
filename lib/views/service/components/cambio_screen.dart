import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:passarinho_app/common/error_box.dart';
import 'package:passarinho_app/model/veiculo/components/cambio/cambio.dart';
import 'package:passarinho_app/stores/cambio_store.dart';

class CambioScreen extends StatelessWidget {
  CambioScreen({this.showAll = true, this.selected});

  final Cambio selected;
  final bool showAll;

  final CambioStore cambioStore = GetIt.I<CambioStore>();

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
        title: const Text('Câmbio'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.fromLTRB(32, 12, 32, 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 8,
          child: Observer(builder: (_) {
            if (cambioStore.error != null) {
              return ErrorBox(
                message: cambioStore.error,
              );
            } else if (cambioStore.cambioList.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              final cambios = showAll
                  ? cambioStore.allCambioList
                  : cambioStore.cambioList;

              return ListView.separated(
                itemCount: cambios.length,
                separatorBuilder: (_, __) {
                  return Container(
                    height: 5,
                  );
                },
                itemBuilder: (_, index) {
                  final cambio = cambios[index];

                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pop(cambio);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: cambio.id == selected?.id
                              ? Theme.of(context).primaryColor
                              : null,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        cambio.nome,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: cambio.id == selected?.id
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
