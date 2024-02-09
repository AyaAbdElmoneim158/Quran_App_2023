import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      // bottomNavigationBar: ,
      body: Center(
        child: Text(
          "Bottom Navbar",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
