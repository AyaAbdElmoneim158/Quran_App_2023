import 'package:app/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({
    super.key,
    required this.items,
    this.currentIndex = 0,
    required this.onTap,
  });
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Styles.decorationBottomNavbar,
      child: BottomNavigationBar(
        items: items,
        currentIndex: currentIndex,
        onTap: onTap,
      ),
    );
  }
}
