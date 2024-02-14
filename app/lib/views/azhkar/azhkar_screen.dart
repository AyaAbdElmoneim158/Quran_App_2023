import 'package:app/views/azhkar/model/azhkar_model.dart';
import 'package:app/views/azhkar/widgets/azhkar_details_card.dart';
import 'package:animate_do/animate_do.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: AzhkarModel.dummyAzhkar.length,
            itemBuilder: (context, index) => index % 2 == 0
                ? FadeInLeftBig(
                    duration: const Duration(milliseconds: 1200),
                    child:
                        buildAzhkarDetailsCard(index, AzhkarModel.dummyAzhkar))
                : FadeInRightBig(
                    duration: const Duration(milliseconds: 1200),
                    child:
                        buildAzhkarDetailsCard(index, AzhkarModel.dummyAzhkar)),
          ),
        ),
      ),
    );
  }
}
