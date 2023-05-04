import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('App'),
      toolbarHeight: 70.0,
      actions: [
        PopupMenuButton(
            tooltip: 'MENU',
            onSelected: (value) {
              Navigator.of(context).pushNamed('/$value');
            },
            itemBuilder: (BuildContext context) {
              return const [
                PopupMenuItem(
                  value: '',
                  child: Text('Home'),
                ),
                PopupMenuItem(
                  value: 'video',
                  child: Text('Vídeo'),
                ),
                PopupMenuItem(
                  value: 'foto',
                  child: Text('Foto'),
                ),
                PopupMenuItem(
                  value: 'email',
                  child: Text('Validar e-mail'),
                ),
                PopupMenuItem(
                  value: 'texto',
                  child: Text('Texto animado'),
                ),
                PopupMenuItem(
                  value: 'load',
                  child: Text('Easy Loading'),
                ),
              ];
            })
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(70);
}
