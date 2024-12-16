import 'package:flutter/material.dart';
import 'package:halal_spot/src/core/di/app_providers.dart';
import 'package:halal_spot/src/core/di/di.dart';
import 'package:halal_spot/src/core/routing/app_router.dart';
import 'package:halal_spot/src/core/theme/app_theme.dart';
import 'package:halal_spot/src/core/theme/theme_cubit.dart';

class HalalSpotApp extends StatelessWidget {
  const HalalSpotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppProviders(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
        title: 'Halal Spot',
        themeMode: getIt<ThemeCubit>().state,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
      ),
    );
  }
}