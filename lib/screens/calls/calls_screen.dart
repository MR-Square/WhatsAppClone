import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/constants/popup_menus.dart';
import 'package:whatsapp_clone/widgets/popup_menu/my_popup_menu.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Calls',
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
            const MyPopupMenu(menuList: callsPopupMenus),
          ],
        ),
        body: const Center(
          child: Text('Calls'),
        ),
      ),
    );
  }
}
