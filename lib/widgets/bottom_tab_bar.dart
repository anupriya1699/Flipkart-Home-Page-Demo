import 'package:flutter/material.dart';

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
          backgroundColor: Colors.blue,
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.interests_outlined,), label: 'Categories'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_none_rounded,), label: 'Notifications'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,), label: 'Account'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,), label: 'Cart'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      onTap: _onItemTapped,
    );
  }
}
