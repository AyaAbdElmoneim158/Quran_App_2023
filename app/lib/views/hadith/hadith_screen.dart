import 'package:animate_do/animate_do.dart';
import 'package:app/views/hadith/models/hadith_model.dart';
import 'package:app/views/hadith/widgets/hadith_card.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemCount: Hadith.dummyHadith.length,
              itemBuilder: (context, index) {
                var hadith = Hadith.dummyHadith[index];
                return (index % 2 == 0)
                    ? FadeInLeftBig(
                        duration: const Duration(milliseconds: 1200),
                        child: buildHadithCard(
                          index,
                          hadith,
                        ),
                      )
                    : FadeInRightBig(
                        duration: const Duration(milliseconds: 1200),
                        child: buildHadithCard(
                          index,
                          hadith,
                        ),
                      );
              }),
        ),
      ),
    );
  }
}
