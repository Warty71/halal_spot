import 'package:go_router/go_router.dart';
import 'package:halal_spot/src/core/routing/utilities/routes.dart';

final appRouter = GoRouter(
  initialLocation: Routes.home,
  routes: appRoutes,
);