import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AiImgStartPage extends StatelessWidget {
  const AiImgStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(

              child: Row(
            children: [
              Expanded(
                child: ListView(),
              ),
              Gap(16),
              Expanded(
                child: ListView(),
              ),
              Gap(16),
              Expanded(
                child: ListView(),
              )
            ],
          ))
        ],
      ),
    );
  }
}
