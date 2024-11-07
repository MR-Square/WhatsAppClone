import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/constants/app_colors.dart';
import 'package:whatsapp_clone/core/constants/popup_menus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Widget> _pages = const [
    Center(child: Text('Chats')),
    Center(child: Text('Updates')),
    Center(child: Text('Communities')),
    Center(child: Text('Calls')),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

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
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _pages,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          items: const [
            BottomNavigationBarItem(
              label: 'Chats',
              icon: Icon(Icons.chat),
            ),
            BottomNavigationBarItem(
              label: 'Updates',
              icon: ImageIcon(AssetImage('assets/icons/updates.png')),
            ),
            BottomNavigationBarItem(
              label: 'Communities',
              icon: Icon(Icons.groups),
            ),
            BottomNavigationBarItem(
              label: 'Calls',
              icon: Icon(Icons.call),
            ),
          ],
        ),
      ),
    );
  }
}
