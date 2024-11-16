import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_41/ep2064_travel_mobile_app/views/travel_detail_page.dart';
import 'package:flutter_notebook_chapter_41/ep2064_travel_mobile_app/views/travel_home_page.dart';
import 'package:go_router/go_router.dart';

class TravelMobileApp extends StatelessWidget {
  TravelMobileApp({super.key});

  final router = GoRouter(
    routes: [
      GoRoute(
          path: "/",
          builder: (context, state) {
            return TravelHomePage();
          }),
      GoRoute(
          path: "/detail",
          builder: (context, state) {
            return TravelDetailPage();
          }),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
