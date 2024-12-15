import 'package:flutter/material.dart';

class AiImgTemplatePage extends StatefulWidget {
  final Widget child;

  AiImgTemplatePage({
    super.key,
    required this.child,
  });

  @override
  State<AiImgTemplatePage> createState() => _AiImgTemplatePageState();
}

class _AiImgTemplatePageState extends State<AiImgTemplatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topCenter,
                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(41, 16, 68, 1),
                    Color.fromRGBO(11, 4, 20, 1),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
