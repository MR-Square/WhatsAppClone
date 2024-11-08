import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/constants/app_colors.dart';
import 'package:whatsapp_clone/core/constants/popup_menus.dart';
import 'package:whatsapp_clone/widgets/popup_menu/my_popup_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'MyWhatsApp',
            style: TextStyle(
              color: AppColors.geen,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined),
            ),
            const MyPopupMenu(menuList: homePopupMenus),
          ],
        ),
        body: const Center(
          child: Text('Chats'),
        ),
      ),
    );
  }
}
