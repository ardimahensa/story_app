import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:story_u/features/auth/bloc/login_bloc.dart';
import 'package:story_u/features/auth/bloc/register_bloc.dart';
import 'package:story_u/features/auth/cubit/password_visibility_cubit.dart';
import 'package:story_u/features/stories/cubit/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_u/features/stories/bloc/stories_bloc.dart';
import 'package:story_u/routes/page_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(create: (context) => PasswordVisibilityCubit()),
        BlocProvider(create: (context) => RegisterBloc()),
        BlocProvider(
            create: (context) =>
                StoriesBloc()..add(const StoriesEvent.getStories())),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: routes,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
              colorScheme: state.theme
                  ? ThemeData.light().colorScheme
                  : ThemeData.dark().colorScheme,
            ),
          );
        },
      ),
    );
  }
}
