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
          Text(
            "My jobs",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Gap(6),
          Container(
            height: 46,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[400]!,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 243, 240, 1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        "Active",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.deepOrange[50],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        "Requested",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.deepOrange[50],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        "History",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(16),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    bottom: 8,
                  ),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(247, 242, 239, 1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                            height: 64,
                            width: 84,
                          ),
                          Column(
                            children: [
                              Text("AC Installation"),
                              Row(
                                children: [
                                  Icon(Icons.calendar_today, size: 16,),
                                  Gap(8),
                                  Text("30 May, 2024"),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        height: 64,
                        child: Row(
                          children: [
                            CircleAvatar(),
                            Expanded(
                              child: Column(
                                children: [
                                  Text("John Doe"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Row(
                                children: [
                                  Icon(Icons.chat_outlined),
                                  Text("Chat"),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Row(
                                children: [
                                  Icon(Icons.call),
                                  Text("Call"),
                                ],
                              ),
                            ),
                          ),
                        ],
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
