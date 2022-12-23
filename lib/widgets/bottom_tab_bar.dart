import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _selectedIndex= 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print(index);
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          // backgroundColor: Colors.blue,
          items: const [
        BottomNavigationBarItem(icon: Icon(Ionicons.home_outline, size: 22, ), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Ionicons.grid_outline, size: 22,), label: 'Categories'),
        BottomNavigationBarItem(icon: Icon(Ionicons.notifications_outline,size: 22,), label: 'Notifications'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,size: 25,), label: 'Account'),
        BottomNavigationBarItem(icon: Icon(Ionicons.cart_outline,size: 27,), label: 'Cart'),
      ],
      // type: ,
      currentIndex: _selectedIndex,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      selectedFontSize: 10,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      unselectedFontSize: 10,
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
    );
  }
}
