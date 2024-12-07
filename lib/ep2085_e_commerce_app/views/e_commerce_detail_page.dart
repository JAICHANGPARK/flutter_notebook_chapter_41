import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ECommerceDetailPage extends StatefulWidget {
  const ECommerceDetailPage({super.key});

  @override
  State<ECommerceDetailPage> createState() => _ECommerceDetailPageState();
}

class _ECommerceDetailPageState extends State<ECommerceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 10,
            child: SafeArea(
              child: Stack(
                children: [
                  Positioned(
                    top: 24,
                    left: 16,
                    right: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back_ios_new,
                          ),
                        ),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite_outline,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned.fill(
                    bottom: 16,
                    child: SafeArea(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  // image: DecorationImage(
                                  //   image: NetworkImage(
                                  //
                                  //     "https://cdn.pixabay.com/photo/2013/07/12/15/53/t-shirt-150525_1280.png",
                                  //   ),
                                  // ),
                                  ),
                              child: Image.network(
                                "https://cdn.pixabay.com/photo/2013/07/12/15/53/t-shirt-150525_1280.png",
                                height: 240,
                                width: 280,
                              ),
                            ),
                          ),
                          Gap(12),
                          SizedBox(
                            height: 62,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 62,
                                  width: 62,
                                  margin: EdgeInsets.only(
                                    right: 16,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
              ),
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Silk Shirt",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.orange[50],
                          border: Border.all(
                            color: Colors.orange,
                          ),
                          borderRadius: BorderRadius.circular(42),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.orange,
                                ),
                              ),
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                            Gap(8),
                            Text("01"),
                            Gap(8),
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.orange,
                                ),
                              ),
                              child: Icon(
                                Icons.add,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Gap(16),
                  Row(
                    children: [
                      Text("From:"),
                      Text(
                        "\$975.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.brown,
                          ),
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(2),
                        child: CircleAvatar(
                          backgroundColor: Colors.brown[300],
                        ),
                      ),
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          // border: Border.all(
                          //   color: Colors.brown,
                          // ),
                          shape: BoxShape.circle,
                          color: Colors.teal,
                        ),
                      ),
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          // border: Border.all(
                          //   color: Colors.brown,
                          // ),
                          shape: BoxShape.circle,
                          color: Colors.teal,
                        ),
                      ),
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          // border: Border.all(
                          //   color: Colors.brown,
                          // ),
                          shape: BoxShape.circle,
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                  Gap(24),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
