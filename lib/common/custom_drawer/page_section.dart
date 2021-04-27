import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:passarinho_app/common/custom_drawer/page_tile.dart';
import 'package:passarinho_app/stores/page_store.dart';
import 'package:passarinho_app/stores/user_manager_store.dart';
import 'package:passarinho_app/views/Login/login_view.dart';

class PageSection extends StatelessWidget {
  final PageStore pageStore = GetIt.I<PageStore>();
  final UserManagerStore userManagerStore = GetIt.I<UserManagerStore>();

  @override
  Widget build(BuildContext context) {
    Future<void> verifyLoginAndSetPage(int page) async {
      if (userManagerStore.isLoggedIn) {
        pageStore.setPage(page);
      } else {
        final result = await Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => LoginView()));
        if (result != null && result) pageStore.setPage(page);
      }
    }

    return Column(
      children: [
        PageTile(
          label: 'Home',
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
            verifyLoginAndSetPage(1);
          },
          highlighted: pageStore.page == 1,
        ),
      ],
    );
  }
}
