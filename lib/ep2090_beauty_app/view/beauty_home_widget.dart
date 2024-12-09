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
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(2),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],

                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.group,),
                                  Text("Social")
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,

                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.shopping_bag_outlined,),
                                  Text("Shop")
                                ],
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
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
