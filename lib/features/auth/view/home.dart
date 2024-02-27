import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:story_u/features/auth/cubit/theme_cubit.dart';
import 'package:story_u/features/auth/view/login.dart';

import '../bloc/login_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final loginResult = state.maybeWhen(
          loginSuccess: (loginResult) => loginResult,
          orElse: () {},
        );
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: context.select((ThemeCubit cubit) =>
                  cubit.state.theme
                      ? const Color.fromARGB(255, 250, 194, 96)
                      : const Color.fromARGB(255, 82, 82, 88)),
              title: Row(
                children: [
                  Text(
                    'Story',
                    style: GoogleFonts.kalam().copyWith(fontSize: 24),
                  ),
                  Image.asset(
                    'assets/img/u.png',
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    'Hi ${loginResult != null ? loginResult.name : 'Guest'}!',
                  ),
                ),
              ],
            ),
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  context
                      .read<LoginBloc>()
                      .add(const LoginEvent.logoutRequested());

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: const Text('Logout'),
              ),
            ),
            floatingActionButton: BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return FloatingActionButton(
                  onPressed: () {
                    context.read<ThemeCubit>().changeTheme();
                  },
                  child: state.theme
                      ? const Icon(Icons.mode_night_rounded)
                      : const Icon(Icons.light_mode_sharp),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
