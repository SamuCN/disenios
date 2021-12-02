import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: 'Calendario'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outline_outlined),
          label: 'Grafica'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_sharp),
          label: 'Usuarios'
        ),
      ]
      
    );
  }
}