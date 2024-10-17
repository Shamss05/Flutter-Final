import 'package:flutter/material.dart';
import 'package:final_project/screens/recommended_restaurants.dart';
import 'package:final_project/screens/cart.dart';
import 'package:final_project/screens/home_screen.dart';
import 'package:final_project/screens/profile_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  // List of pages
  final List<Widget> _pages = [
    HomeScreen(),
    RecommendedRestaurants(),
    Cart(),
    ProfileScreen(),
  ];

  // Handle tab change
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _currentIndex == 0 ? Colors.orange.shade600 : Colors.grey,
              size: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant_menu_outlined,
              color: _currentIndex == 1 ? Colors.orange.shade600 : Colors.grey,
              size: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: _currentIndex == 2 ? Colors.orange.shade600 : Colors.grey,
              size: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _currentIndex == 3 ? Colors.orange.shade600 : Colors.grey,
              size: 40,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}






