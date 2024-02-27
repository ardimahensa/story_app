import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:story_u/features/auth/bloc/register_bloc.dart';
import 'package:story_u/features/auth/cubit/password_visibility_cubit.dart';
import 'package:story_u/features/auth/view/login.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            //word
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Register Now',
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
              decoration: const InputDecoration(
                fillColor: Colors.grey,
                labelText: 'Name',
              ),
            ),
            const SizedBox(height: 30),

            //form email
            TextFormField(
              controller: emailC,
              decoration: const InputDecoration(
                fillColor: Colors.grey,
                labelText: 'Email',
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
                    labelText: 'Password',
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
                  const TextSpan(text: 'Already have an account ? '),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Login now',
                        style: TextStyle(
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
                          'Register Success',
                          style: GoogleFonts.kalam(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ).copyWith(color: Colors.white),
                        ),
                        backgroundColor:
                            const Color.fromARGB(255, 111, 111, 110),
                      ),
                    );
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  registerError: (errorMessage) {
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
                  registerLoading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
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
                      child: const Text(
                        'Register',
                      ),
                    );
                  },
                );
              },
            ),

            const Flexible(
              flex: 1,
              child: SizedBox(height: 10),
            )
          ],
        ),
      ),
    );
  }
}
