import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:story_u/features/add_stories/cubit/add_stories_cubit.dart';
import 'package:story_u/features/auth/bloc/login_bloc.dart';
import 'package:story_u/features/auth/bloc/register_bloc.dart';
import 'package:story_u/features/auth/cubit/password_visibility_cubit.dart';
import 'package:story_u/features/detail_stories/bloc/stories_detail_bloc.dart';
import 'package:story_u/features/stories/cubit/language_cubit.dart';
import 'package:story_u/features/stories/cubit/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_u/features/stories/bloc/stories_bloc.dart';
import 'package:story_u/routes/page_routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(create: (context) => PasswordVisibilityCubit()),
        BlocProvider(create: (context) => RegisterBloc()),
        BlocProvider(create: (context) => StoriesDetailBloc()),
        BlocProvider(create: (context) => AddStoriesCubit()),
        BlocProvider(create: (context) => LanguageCubit()),
        BlocProvider(
            create: (context) =>
                StoriesBloc()..add(const StoriesEvent.getStories())),
      ],
      child: BlocBuilder<LanguageCubit, LanguageState>(
        builder: (context, languageState) {
          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, themeState) {
              return MaterialApp.router(
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en', 'US'),
                  Locale('id', 'ID'),
                ],
                locale: languageState.when(
                  changeLanguage: (locale) => locale,
                  currentLanguage: (locale) => locale,
                ),
                routerConfig: routes,
                debugShowCheckedModeBanner: false,
                theme: themeState.when(
                  changeTheme: (themeData) => themeData,
                  currentTheme: (themeData) => themeData,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
