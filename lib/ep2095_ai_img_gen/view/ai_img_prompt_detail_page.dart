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
                          decoration: BoxDecoration(),
                          child: Text(
                            """<lora:EtherPDXLStyleXL:1>, best quality, masterpiece, EtherPDXLStyle, 1girl, megumi katou, katou megumi , smile, looking at viewer, Megumi <lora:KatoMegumi:1>,brown hair,katou megumi,brown eyes, medium breasts , short hair, hood down, short hair, upper body, glitch, black hoodie, colorful, black jacket, paint splatter, long sleeves, abstract background, looking back, multicolored background, from side, hooded jacket, heart, chromatic aberration Show less""",
                            style: TextStyle(
                              
                            ),
                          ))
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
