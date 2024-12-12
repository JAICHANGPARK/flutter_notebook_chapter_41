import 'package:flutter/material.dart';

class BeautyDetailPage extends StatefulWidget {
  const BeautyDetailPage({super.key});

  @override
  State<BeautyDetailPage> createState() => _BeautyDetailPageState();
}

class _BeautyDetailPageState extends State<BeautyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
              ),
            ),
            Expanded(
              child: Container(
                // margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Add a comment",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.send))
          ],
        ),
      ),
    );
  }
}
