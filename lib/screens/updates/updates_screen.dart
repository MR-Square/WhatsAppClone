import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/constants/popup_menus.dart';
import 'package:whatsapp_clone/widgets/popup_menu/my_popup_menu.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Updates',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            const MyPopupMenu(menuList: updatesPopupMenus),
          ],
        ),
        body: const Center(
          child: Text('Updates'),
        ),
      ),
    );
  }
}
