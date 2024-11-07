import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/constants/app_colors.dart';
import 'package:whatsapp_clone/core/constants/popup_menus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          PopupMenuButton(
            itemBuilder: (context) => popupMenus
                .map(
                  (item) => PopupMenuItem(
                    value: item['value'],
                    child: Text(
                      item['label'].toString(),
                    ),
                  ),
                )
                .toList(),
            offset: const Offset(10, 40),
            color: Colors.white,
            elevation: 2,
            onSelected: (value) {},
          ),
        ],
      ),
      body: const Center(
        child: Text('home page'),
      ),
    );
  }
}
