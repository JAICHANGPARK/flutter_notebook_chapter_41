import 'package:flutter/material.dart';

class BeautyHomeWidget extends StatefulWidget {
  const BeautyHomeWidget({super.key});

  @override
  State<BeautyHomeWidget> createState() => _BeautyHomeWidgetState();
}

class _BeautyHomeWidgetState extends State<BeautyHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 280,
          color: Colors.grey[200],
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
            
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
            
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.group,),
                                Text("Social")
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        Divider(height: 0,)
      ],
    );
  }
}
