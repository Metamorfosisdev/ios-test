import 'package:flutter/material.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      decoration: const BoxDecoration(
        color: Color(0xff2E305F),
      ),
      child: BottomNavigationBar(
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white38,
        selectedItemColor: Colors.pink,
        backgroundColor: const Color(0xff2E305F).withOpacity(0.4),
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'person',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'graphic',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation),
            label: 'navigation',
          ),
        ],
      ),
    );
  }
}
