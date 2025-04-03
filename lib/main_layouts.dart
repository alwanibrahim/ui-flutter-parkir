import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 14,right: 24,left: 24,bottom: 30),
        child: NavigationBar(
          animationDuration: const Duration(seconds: 1),
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },

          destinations: _navBarItems,
        ),
      ),
    );
  }
}

var _navBarItems = [
  NavigationDestination(
    icon: SvgPicture.asset(
      'assets/svgs/grid.svg',
      width: 24,
      height: 24,
      color: Colors.grey,
    ),
    selectedIcon: SvgPicture.asset('assets/svgs/grid.svg',width: 24, height: 24,color: Colors.blueAccent,),
    label: 'Home',
  ),
  NavigationDestination(
    icon: SvgPicture.asset(
      'assets/svgs/orders.svg',
      width: 24,
      height: 24,
      color: Colors.grey,
    ),
    selectedIcon: SvgPicture.asset('assets/svgs/orders.svg',width: 24, height: 24,color: Colors.blueAccent,),
    label: 'Orders',
  ),
  NavigationDestination(
    icon: SvgPicture.asset(
      'assets/svgs/wallet.svg',
      width: 24,
      height: 24,
      color: Colors.grey,
    ),
    selectedIcon: SvgPicture.asset('assets/svgs/wallet.svg',width: 24, height: 24,color: Colors.blueAccent,),
    label: 'Wallet',
  ),
  NavigationDestination(
    icon: SvgPicture.asset(
      'assets/svgs/setting.svg',
      width: 24,
      height: 24,
      color: Colors.grey,
    ),
    selectedIcon: SvgPicture.asset('assets/svgs/setting.svg',width: 24, height: 24,color: Colors.blueAccent,),
    label: 'Setting',
  ),

];
