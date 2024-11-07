import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/constants/popup_menus.dart';
import 'package:whatsapp_clone/widgets/popup_menu/my_popup_menu.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Communities',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined),
            ),
            const MyPopupMenu(menuList: communitiesPopupMenus),
          ],
        ),
        body: const Center(
          child: Text('Communities'),
        ),
      ),
    );
  }
}
