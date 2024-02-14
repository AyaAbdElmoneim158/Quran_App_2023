import 'package:app/views/hadith/widgets/hadith_screen_list_view.dart';
import 'package:flutter/material.dart';

class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset("assets/icons/menu.png"),
        ),
        // title: _buildAppBarTitle(),
        // actions: _buildAppBarActions(),
      ),
      body: const HadithScreenListView(),
    );
  }
}
