import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  final int currentIndex;

  const CustomBottomNavigationBar({
    super.key, 
    required this.currentIndex
  });

  void onItemTapped( BuildContext context, int index ) {
    //contex.go
    switch( index ) {
      case 0:
        context.go('/home/0');
      break;

      case 1:
        context.go('/home/1');
      break;

      case 2:
        context.go('/home/2');
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of( context ).colorScheme.primary;

    return BottomNavigationBar(
      currentIndex:  currentIndex,
      onTap: ( index ) => onItemTapped(context, index ),
      selectedItemColor: color,
      elevation: 0,
      items: const [
        
        BottomNavigationBarItem(
          icon: Icon( Icons.home ),
          label: 'Home'
        ),

        BottomNavigationBarItem(
          icon: Icon( Icons.search ),
          label: 'Discover'
        ),

        BottomNavigationBarItem(
          icon: Icon( Icons.settings_outlined ),
          label: 'Settings'
        ),

      ],
    );
  }
}