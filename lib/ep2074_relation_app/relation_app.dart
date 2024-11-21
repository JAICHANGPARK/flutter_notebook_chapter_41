import 'package:flutter/material.dart';

import 'views/relation_main_page.dart';


class RelationApp extends StatelessWidget {
  const RelationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: RelationMainPage(),
    );
  }
}
