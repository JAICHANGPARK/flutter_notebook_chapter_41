import 'package:flutter/material.dart';

class TravelBookPage extends StatefulWidget {
  const TravelBookPage({super.key});

  @override
  State<TravelBookPage> createState() => _TravelBookPageState();
}

class _TravelBookPageState extends State<TravelBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          color: Colors.grey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 24,
                child: Icon(Icons.arrow_back),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Eiffel Tower"),
                    Text("France"),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 24,
                child: Icon(Icons.favorite_outline),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
