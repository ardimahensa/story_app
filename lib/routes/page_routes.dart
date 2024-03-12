import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:story_u/features/auth/datasource/data/user_data.dart';
import 'package:story_u/features/auth/presentations/screen/login.dart';
import 'package:story_u/features/auth/presentations/screen/register.dart';
import 'package:story_u/features/stories/presentations/views/home.dart';

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        final isLoggedInFuture = UserDataLocal().isLoggedIn();
        isLoggedInFuture.then((isLoggedIn) {
          if (isLoggedIn) {
            GoRouter.of(context).go('/home');
          } else {
            GoRouter.of(context).go('/login');
          }
        });
        return Container();
      },
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
// List<GoRoute> routes() {
//   return [
//     GoRoute(
//       path: '/',
//       builder: (context, state) {
//         final isLoggedInFuture = UserDataLocal().isLoggedIn();
//         isLoggedInFuture.then((isLoggedIn) {
//           if (isLoggedIn) {
//             GoRouter.of(context).goNamed('/home');
//           } else {
//             GoRouter.of(context).goNamed('/login');
//           }
//         });

//         // Builder harus mengembalikan widget apa pun, misalnya Container
//         return Container();
//       },
//     ),
//     GoRoute(
//       path: '/login',
//       builder: (context, state) => const LoginScreen(),
//     ),
//     GoRoute(
//       path: '/register',
//       builder: (context, state) => const RegisterScreen(),
//     ),
//     GoRoute(
//       path: '/home',
//       builder: (context, state) => const HomeScreen(),
//     ),
//   ];
// }
