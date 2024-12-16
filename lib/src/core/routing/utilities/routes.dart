import 'package:go_router/go_router.dart';
import 'package:halal_spot/src/features/home/presentation/screens/home_screen.dart';
import 'package:halal_spot/src/features/places/presentation/screens/places_screen.dart';
/// All routes in the app
final appRoutes = [
  GoRoute(
    path: Routes.home,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: Routes.places,
    builder: (context, state) => const PlacesScreen(),
  ),
];

/// Route path constants
class Routes {
  static const String home = '/';
  static const String places = '/places';

  // Prevent instantiation
  const Routes._();
}