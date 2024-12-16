import 'package:flutter/material.dart';
import 'package:halal_spot/src/core/routing/app_router.dart';

class HalalSpotApp extends StatelessWidget {
  const HalalSpotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      title: 'Halal Spot',
    );
  }
}