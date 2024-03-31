import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:story_u/features/auth/bloc/register_bloc.dart';
import 'package:story_u/features/auth/cubit/password_visibility_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  @override
  void dispose() {
    nameC.dispose();
    emailC.dispose();
    passwordC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),
              //word
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.registerNow,
                      style: GoogleFonts.kalam(
                        fontWeight: FontWeight.w500,
                        fontSize: 40,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Story ',
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
                  ],
                ),
              ),
              const SizedBox(height: 50),

              //form nama
              TextFormField(
                controller: nameC,
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  labelText: AppLocalizations.of(context)!.name,
                ),
              ),
              const SizedBox(height: 30),

              //form email
              TextFormField(
                controller: emailC,
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  labelText: AppLocalizations.of(context)!.email,
                ),
              ),
              const SizedBox(height: 30),

              //form password
              BlocBuilder<PasswordVisibilityCubit, PasswordVisibilityState>(
                builder: (context, state) {
                  return TextFormField(
                    controller: passwordC,
                    obscureText: state.toggle,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      labelText: AppLocalizations.of(context)!.password,
                      suffixIcon: IconButton(
                        onPressed: () {
                          context
                              .read<PasswordVisibilityCubit>()
                              .toggleVisibility();
                        },
                        icon: !state.toggle
                            ? const Icon(Icons.visibility)
                            : const Icon(
                                Icons.visibility_off,
                              ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),

              //register button
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text:
                            AppLocalizations.of(context)!.alreadyHaveAnAccount),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: TextButton(
                        onPressed: () {
                          GoRouter.of(context).goNamed('login');
                        },
                        child: Text(
                          AppLocalizations.of(context)!.loginNow,
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              //button register
              BlocConsumer<RegisterBloc, RegisterState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    registerSucces: (registerModel) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            AppLocalizations.of(context)!.registerSuccess,
                            style: GoogleFonts.kalam(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ).copyWith(color: Colors.white),
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 111, 111, 110),
                        ),
                      );
                      GoRouter.of(context).goNamed('home');
                    },
                    registerError: (errorMessage) {
                      ScaffoldMessenger.of(context).showSnackBar(
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
                    registerLoading: () =>
                        const Center(child: CircularProgressIndicator()),
                    orElse: () {
                      return ElevatedButton(
                        onPressed: () {
                          context.read<RegisterBloc>().add(
                                RegisterEvent.registerRequest(
                                  name: nameC.text,
                                  email: emailC.text,
                                  passowrd: passwordC.text,
                                ),
                              );
                        },
                        child: Text(
                          AppLocalizations.of(context)!.register,
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
