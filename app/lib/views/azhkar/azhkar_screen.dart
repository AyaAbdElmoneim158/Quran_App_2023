import 'package:app/views/azhkar/widgets/azhkar_screen_list_view.dart';
import 'package:flutter/material.dart';

class AzhkarScreen extends StatefulWidget {
  const AzhkarScreen({super.key});

  @override
  State<AzhkarScreen> createState() => _AzhkarScreenState();
}

class _AzhkarScreenState extends State<AzhkarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset("assets/icons/menu.png"),
        ),
      ),
      body: const AzhkarScreenListView(),
    );
  }
}
