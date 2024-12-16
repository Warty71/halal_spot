import 'package:flutter/material.dart';
import 'package:halal_spot/src/app.dart';
import 'package:halal_spot/src/core/di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();

  runApp(const HalalSpotApp());
}