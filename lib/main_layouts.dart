import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ft_apk_parkir/pages/discover_screen.dart';
import 'package:ft_apk_parkir/pages/order_screen.dart';
import 'package:ft_apk_parkir/pages/setting_screen.dart';
import 'package:ft_apk_parkir/pages/walllet_screnn.dart';

class MainLayouts extends StatefulWidget {
  const MainLayouts({Key? key}) : super(key: key);

  @override
  State<MainLayouts> createState() => _MainLayoutsState();
}

class _MainLayoutsState extends State<MainLayouts> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DiscoverScreen(),
    OrderScreen(),
    WalletScrenn(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // biar kontras dengan navBar
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 16, right: 16),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: NavigationBar(
              height: 70,
              backgroundColor: Colors.white,
              animationDuration: const Duration(milliseconds: 500),
              selectedIndex: _selectedIndex,
              onDestinationSelected: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              destinations: _navBarItems,
            ),
          ),
        ),
      ),
    );
  }
}

final _navBarItems = [
  NavigationDestination(
    icon: SvgPicture.asset(
      'assets/svgs/grid.svg',
      width: 24,
      height: 24,
      color: Colors.grey,
    ),
    selectedIcon: SvgPicture.asset(
      'assets/svgs/grid.svg',
      width: 24,
      height: 24,
      color: Colors.blueAccent,
    ),
    label: 'Home',
  ),
  NavigationDestination(
    icon: SvgPicture.asset(
      'assets/svgs/orders.svg',
      width: 24,
      height: 24,
      color: Colors.grey,
    ),
    selectedIcon: SvgPicture.asset(
      'assets/svgs/orders.svg',
      width: 24,
      height: 24,
      color: Colors.blueAccent,
    ),
    label: 'Orders',
  ),
  NavigationDestination(
    icon: SvgPicture.asset(
      'assets/svgs/wallet.svg',
      width: 24,
      height: 24,
      color: Colors.grey,
    ),
    selectedIcon: SvgPicture.asset(
      'assets/svgs/wallet.svg',
      width: 24,
      height: 24,
      color: Colors.blueAccent,
    ),
    label: 'Wallet',
  ),
  NavigationDestination(
    icon: SvgPicture.asset(
      'assets/svgs/setting.svg',
      width: 24,
      height: 24,
      color: Colors.grey,
    ),
    selectedIcon: SvgPicture.asset(
      'assets/svgs/setting.svg',
      width: 24,
      height: 24,
      color: Colors.blueAccent,
    ),
    label: 'Setting',
  ),
];
