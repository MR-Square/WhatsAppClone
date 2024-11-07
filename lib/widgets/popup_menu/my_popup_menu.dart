import 'package:flutter/material.dart';

class MyPopupMenu extends StatelessWidget {
  const MyPopupMenu({
    super.key,
    required this.menuList,
  });

  final List menuList;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => menuList
          .map(
            (item) => PopupMenuItem(
              value: item['value'],
              child: Text(
                item['label'].toString(),
              ),
            ),
          )
          .toList(),
      offset: const Offset(0, 40),
      color: Colors.white,
      elevation: 2,
      onSelected: (value) {},
    );
  }
}
