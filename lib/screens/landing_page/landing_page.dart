import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls/calls_screen.dart';
import 'package:whatsapp_clone/screens/communities/communities_screen.dart';
import 'package:whatsapp_clone/screens/updates/updates_screen.dart';
import 'package:whatsapp_clone/widgets/bottombar/my_bottombar.dart';
import 'package:whatsapp_clone/screens/home/home_screen.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // Define variable for page index.
  int _currentIndex = 0;

  // Define Controller for page navigation.
  late PageController _pageController;

  // Define List of pages.
  final List<Widget> _pages = const [
    HomeScreen(),
    UpdatesScreen(),
    CommunitiesScreen(),
    CallsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _pages,
      ),
      bottomNavigationBar: MyBottombar(
        onTapped: _onTabTapped,
        currentIndex: _currentIndex,
      ),
    );
  }

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

  // Function when user tab on bottom bar button.
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  // Function when user swip
  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
