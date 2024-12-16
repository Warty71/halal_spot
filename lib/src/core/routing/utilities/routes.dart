import 'package:go_router/go_router.dart';
import 'package:halal_spot/src/features/home/presentation/screens/home_screen.dart';
/// All routes in the app
final appRoutes = [
  GoRoute(
    path: Routes.home,
    builder: (context, state) => const HomeScreen(),
  ),
];

/// Route path constants
class Routes {
  static const String home = '/';

  // Prevent instantiation
  const Routes._();
}