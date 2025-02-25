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
                        "Title, Title, \nSilk Shirt",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
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
                      Text(
                        "From:",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "\$975.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
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
                      Gap(8),
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
                      Gap(8),
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          // border: Border.all(
                          //   color: Colors.brown,
                          // ),
                          shape: BoxShape.circle,
                          color: Colors.brown[600],
                        ),
                      ),
                      Gap(8),
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          // border: Border.all(
                          //   color: Colors.brown,
                          // ),
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Gap(24),
                  Row(
                    children: [
                      Text("Size"),
                      Spacer(),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Text("4.6/5"),
                      Text("(2k+Review)")
                    ],
                  ),
                  Gap(12),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey[100]!,
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Text("S"),
                          ),
                        ),
                      ),
                      Gap(8),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              color: Colors.grey[100]!,
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Text("M"),
                          ),
                        ),
                      ),
                      Gap(8),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey[100]!,
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Text("L"),
                          ),
                        ),
                      ),
                      Gap(8),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey[100]!,
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Text("XL"),
                          ),
                        ),
                      ),
                      Gap(8),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey[100]!,
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Text("XXL"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(24),
                  Text("Description"),
                  Gap(8),
                  Text(
                      "Description Description Description Description Description Description Description Description "),
                  Gap(12),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Text(
                              "Add to Cart",
                            ),
                          ),
                        ),
                      ),
                      Gap(12),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Text(
                              "Buy Now",
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
