import 'package:flutter/material.dart';

class AiImgPromptDetailPage extends StatefulWidget {
  const AiImgPromptDetailPage({super.key});

  @override
  State<AiImgPromptDetailPage> createState() => _AiImgPromptDetailPageState();
}

class _AiImgPromptDetailPageState extends State<AiImgPromptDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/d6a9ac6b-68f9-48b5-988f-593d9e8e8de4/original=true,quality=90/45231417.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
              child: SafeArea(
            child: Column(
              children: [
                Expanded(child: Container()),
                Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(12, 5, 21, 1),
                  ),
                  child: Column(
                    spacing: 20,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Prompt Result",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.copy,
                            ),
                            color: Colors.white,
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.white.withValues(alpha: .1),
                            )),
                        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                        child: Text(
                          """<lora:EtherPDXLStyleXL:1>, best quality, masterpiece, EtherPDXLStyle, 1girl, megumi katou, katou megumi , smile, looking at viewer, Megumi <lora:KatoMegumi:1>,brown hair,katou megumi,brown eyes, medium breasts , short hair, hood down, short hair, upper body, glitch, black hoodie, colorful, black jacket, paint splatter, long sleeves, abstract background, looking back, multicolored background, from side, hooded jacket, heart, chromatic aberration Show less""",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          maxLines: 5,
                        ),
                      ),
                      SizedBox(
                        height: 52,
                        child: Row(
                          spacing: 16,
                          children: [
                            Expanded(
                              child: Container(
                                height: double.infinity,
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Color.fromRGBO(28, 28, 28, 1),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: 8,
                                  children: [
                                    Icon(
                                      Icons.download,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: double.infinity,
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Color.fromRGBO(28, 28, 28, 1),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                child: Row(
                                  spacing: 8,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Share",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Center(
                          child: Text("Open Editor",),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
