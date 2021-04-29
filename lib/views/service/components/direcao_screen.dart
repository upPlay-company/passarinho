import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:passarinho_app/common/error_box.dart';
import 'package:passarinho_app/model/veiculo/components/direcao/direcao.dart';
import 'package:passarinho_app/stores/direcao_store.dart';

class DirecaoScreen extends StatelessWidget {
  DirecaoScreen({this.showAll = true, this.selected});

  final Direcao selected;
  final bool showAll;

  final DirecaoStore direcaoStore = GetIt.I<DirecaoStore>();

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
        title: const Text('Direção'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.fromLTRB(32, 12, 32, 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 8,
          child: Observer(builder: (_) {
            if (direcaoStore.error != null) {
              return ErrorBox(
                message: direcaoStore.error,
              );
            } else if (direcaoStore.direcaoList.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              final direcoes = showAll
                  ? direcaoStore.allDirecaoList
                  : direcaoStore.direcaoList;

              return ListView.separated(
                itemCount: direcoes.length,
                separatorBuilder: (_, __) {
                  return Container(
                    height: 5,
                  );
                },
                itemBuilder: (_, index) {
                  final direcao = direcoes[index];

                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pop(direcao);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: direcao.id == selected?.id
                              ? Theme.of(context).primaryColor
                              : null,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        direcao.nome,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: direcao.id == selected?.id
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
