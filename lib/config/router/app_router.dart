import 'package:fluttertemplate/presentation/screens/initialize_screen.dart';
import 'package:fluttertemplate/presentation/screens/screens.dart';
import 'package:fluttertemplate/presentation/views/views.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/privacy',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, child) => HomeScreen(childView: child),
      branches: <StatefulShellBranch> [
        
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const HomeView(),
            ),
            GoRoute(
              path: '/privacy',
              builder: (context, state) => const InitializeScreen(targetWidget: HomeView())
            )
          ]
        ),       
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/Second',
              builder: (context, state) => const SecondView(),
            )
          ]
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/Third',
              builder: (context, state) => const ThirdView(),
            )
          ]
        ),
      ]
    ),
  ]
);
