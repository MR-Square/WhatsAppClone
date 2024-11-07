import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/bottombar/bottombar_menus.dart';

class MyBottombar extends StatelessWidget {
  const MyBottombar({
    super.key,
    required this.onTapped,
    required this.currentIndex,
  });

  final Function(int) onTapped;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: onTapped,
        items: bottombarMenus
            .map(
              (item) => BottomNavigationBarItem(
                label: item['label'].toString(),
                icon: item['icon'],
              ),
            )
            .toList(),
      ),
    );
  }
}
