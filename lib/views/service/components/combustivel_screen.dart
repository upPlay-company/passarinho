import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:passarinho_app/common/error_box.dart';
import 'package:passarinho_app/model/veiculo/components/combustivel/combustivel.dart';
import 'package:passarinho_app/stores/combustivel_store.dart';

class CombustivelScreen extends StatelessWidget {
  CombustivelScreen({this.showAll = true, this.selected});

  final Combustivel selected;
  final bool showAll;

  final CombustivelStore combustivelStore = GetIt.I<CombustivelStore>();

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
        title: const Text('Combustível'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.fromLTRB(32, 12, 32, 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 8,
          child: Observer(builder: (_) {
            if (combustivelStore.error != null) {
              return ErrorBox(
                message: combustivelStore.error,
              );
            } else if (combustivelStore.combustivelList.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              final combustivels = showAll
                  ? combustivelStore.allCombustivelList
                  : combustivelStore.combustivelList;

              return ListView.separated(
                itemCount: combustivels.length,
                separatorBuilder: (_, __) {
                  return Container(
                    height: 5,
                  );
                },
                itemBuilder: (_, index) {
                  final combustivel = combustivels[index];

                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pop(combustivel);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: combustivel.id == selected?.id
                              ? Theme.of(context).primaryColor
                              : null,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        combustivel.nome,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: combustivel.id == selected?.id
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
