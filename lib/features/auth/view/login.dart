import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:story_u/features/auth/cubit/password_visibility_cubit.dart';
import 'package:story_u/features/auth/cubit/theme_cubit.dart';
import 'package:story_u/features/auth/view/home.dart';
import 'package:story_u/features/auth/view/register.dart';
import 'package:story_u/widgets/custom_form.dart';

import '../bloc/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailC = TextEditingController();
    TextEditingController passwordC = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //imgae
          Transform.scale(
            scale: 1.2,
            child: Image.asset(
              'assets/img/login.png',
            ),
          ),
          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //wellcome
                Text(
                  'Wellcome To',
                  style: GoogleFonts.kalam(
                    fontWeight: FontWeight.w500,
                    fontSize: 40,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Story',
                      style: GoogleFonts.kalam(
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Image.asset(
                      'assets/img/u.png',
                      height: 70,
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                //form email
                CustomForm(
                  controller: emailC,
                  labelText: 'Email',
                  fillColor: Colors.grey,
                ),

                const SizedBox(height: 30),

                //form password
                BlocBuilder<PasswordVisibilityCubit, PasswordVisibilityState>(
                  builder: (context, state) {
                    return CustomForm(
                      controller: passwordC,
                      labelText: 'Password',
                      obsecure: state.toggle,
                      suffixIcon: IconButton(
                        onPressed: () {
                          context
                              .read<PasswordVisibilityCubit>()
                              .toggleVisibility();
                        },
                        icon: !state.toggle
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          //register
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Don\'t have account ?',
                      style: TextStyle(
                        color: state.theme ? Colors.black : Colors.white,
                      ),
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Register now',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 10),

          //button login
          BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loginSuccess: (loginResult) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Wellcome to Story',
                            style: GoogleFonts.kalam(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ).copyWith(color: Colors.white),
                          ),
                          Image.asset(
                            'assets/img/u.png',
                            height: 20,
                          ),
                        ],
                      ),
                      backgroundColor: const Color.fromARGB(255, 111, 111, 110),
                    ),
                  );
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                loginError: (errorMessage) {
                  return ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(errorMessage),
                      backgroundColor: Colors.red,
                    ),
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loginLoading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                orElse: () {
                  return ElevatedButton(
                    onPressed: () {
                      context.read<LoginBloc>().add(
                            LoginEvent.loginRequest(
                              email: emailC.text,
                              password: passwordC.text,
                            ),
                          );
                    },
                    child: const Text(
                      'Login',
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
