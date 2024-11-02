import 'package:flutter/material.dart';

class OnDemandJobPage extends StatefulWidget {
  const OnDemandJobPage({super.key});

  @override
  State<OnDemandJobPage> createState() => _OnDemandJobPageState();
}

class _OnDemandJobPageState extends State<OnDemandJobPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My jobs"),
        Container(
          height: 48,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.grey[400]!,
          )),
        )
      ],
    );
  }
}
