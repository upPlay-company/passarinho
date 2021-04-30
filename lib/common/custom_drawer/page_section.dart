import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:passarinho_app/common/custom_drawer/page_tile.dart';
import 'package:passarinho_app/stores/page_store.dart';

class PageSection extends StatelessWidget {
  final PageStore pageStore = GetIt.I<PageStore>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: 'Lista de Serviços',
          iconData: Icons.list,
          onTap: () {
            pageStore.setPage(0);
          },
          highlighted: pageStore.page == 0,
        ),
        PageTile(
          label: 'Perfil',
          iconData: Icons.person,
          onTap: () {
            pageStore.setPage(1);
          },
          highlighted: pageStore.page == 1,
        ),
      ],
    );
  }
}
