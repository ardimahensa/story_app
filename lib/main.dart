import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:story_u/features/auth/bloc/login_bloc.dart';
import 'package:story_u/features/auth/bloc/register_bloc.dart';
import 'package:story_u/features/auth/cubit/password_visibility_cubit.dart';
import 'package:story_u/features/auth/cubit/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_u/features/auth/datasource/data/user_data.dart';
import 'package:story_u/features/auth/presentations/screen/home.dart';
import 'package:story_u/features/auth/presentations/screen/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool isLoggedIn = await UserDataLocal().isLoggedIn();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeCubit(),
          ),
          BlocProvider(
            create: (context) => LoginBloc(),
          ),
          BlocProvider(
            create: (context) => PasswordVisibilityCubit(),
          ),
          BlocProvider(
            create: (context) => RegisterBloc(),
          ),
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                useMaterial3: true,
                colorScheme: state.theme
                    ? ThemeData.light().colorScheme
                    : ThemeData.dark().colorScheme,
              ),
              home: isLoggedIn ? const HomeScreen() : const LoginScreen(),
            );
          },
        ));
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final AuthLocalStorage authLocalDataSource = AuthLocalStorage();
//     return BlocProvider(
//       create: (context) => AuthenticationBloc(AuthenticationDataSource()),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           colorScheme: const ColorScheme.dark(),
//           useMaterial3: true,
//         ),
//         home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
//           builder: (context, state) {
//             return state.maybeWhen(
//               savedLoginData: (_) => const HomeView(),
//               orElse: () => FutureBuilder<LoginResult?>(
//                 future: authLocalDataSource.getSavedLoginData(),
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.waiting) {
//                     return const Scaffold(
//                       body: Center(
//                         child: CircularProgressIndicator(),
//                       ),
//                     );
//                   }
//                   if (snapshot.hasData && snapshot.data != null) {
//                     return const HomeView();
//                   } else {
//                     return const LoginView();
//                   }
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
