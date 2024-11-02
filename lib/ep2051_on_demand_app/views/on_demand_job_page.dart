import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnDemandJobPage extends StatefulWidget {
  const OnDemandJobPage({super.key});

  @override
  State<OnDemandJobPage> createState() => _OnDemandJobPageState();
}

class _OnDemandJobPageState extends State<OnDemandJobPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My jobs"),
          Gap(6),
          Container(
            height: 48,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[400]!,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrange[100],
                    ),
                    child: Text(
                      "Active",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          Gap(6),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [],
                      ),
                      Divider(),
                      Row(
                        children: [],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
