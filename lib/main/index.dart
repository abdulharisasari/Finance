import 'package:finance/pages/history/index.dart';
import 'package:finance/pages/home/index.dart';
import 'package:finance/pages/profile/index.dart';
import 'package:finance/pages/wallet/index.dart';
import 'package:finance/service/asset.dart';
import 'package:finance/service/themes.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final List<Widget> _pages = [HomePage(), HistoryPage(), WalletPage(), ProfilePage()];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: Container(
        height: 75,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Color(0x19000000), blurRadius: 24, offset: Offset(0, 11))],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(navHome)), label: ''),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(navHistory)), label: ''),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage(navWallet)), label: ''),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage(navProfile)), label: ''),
          ],
          selectedItemColor: Color(primaryColor),
          unselectedItemColor: Color(lightColor1),
          type: BottomNavigationBarType.fixed,
          elevation: 8,
          selectedLabelStyle: TextStyle(height: 0),
        ),
      ),
    );
  }
}
