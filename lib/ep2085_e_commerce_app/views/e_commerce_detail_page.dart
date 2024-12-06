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
                                image: DecorationImage(
                                  image: NetworkImage(

                                    "https://cdn.pixabay.com/photo/2013/07/12/15/53/t-shirt-150525_1280.png",
                                  ),
                                  
                                ),
                                
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
                    children: [Text("Silk Shirt")],
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
