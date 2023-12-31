import 'package:go_router/go_router.dart';
import 'package:meeplol/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/champions',
      name: ChampionsScreen.name,
      builder: (context, state) => const ChampionsScreen(),
    ),
  ],
);
