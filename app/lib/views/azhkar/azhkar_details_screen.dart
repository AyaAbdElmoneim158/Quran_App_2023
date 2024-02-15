import 'package:app/views/azhkar/widgets/azhkar_card.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/get.dart';

class AzhkarDetailsScreen extends StatelessWidget {
  const AzhkarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var azhkar = Get.arguments["azhkar"];

    return Scaffold(
      appBar: AppBar(
        title: Text(azhkar.category),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: azhkar.array.length,
            itemBuilder: (context, index) => index % 2 == 0
                ? FadeInLeftBig(
                    duration: const Duration(milliseconds: 1200),
                    child: buildAzhkarCard(index, azhkar),
                  )
                : FadeInRightBig(
                    duration: const Duration(milliseconds: 1200),
                    child: buildAzhkarCard(index, azhkar),
                  ),
          ),
        ),
      ),
    );
  }
}
