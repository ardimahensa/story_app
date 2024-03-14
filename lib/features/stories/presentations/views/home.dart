import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:story_u/features/detail_stories/bloc/stories_detail_bloc.dart';
import 'package:story_u/features/stories/cubit/theme_cubit.dart';
import 'package:story_u/features/stories/bloc/stories_bloc.dart';
import 'package:story_u/features/stories/presentations/widgets/date_time.dart';

import '../../../auth/bloc/login_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
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
                    width: 35,
                    height: 35,
                  ),
                ],
              ),
              actions: [
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'Hi ${state.maybeWhen(
                          loginSuccess: (loginResult) => loginResult.name,
                          orElse: () => 'Guest',
                        )}!',
                      ),
                    );
                  },
                ),
                PopupMenuButton(
                  offset: const Offset(0, 55),
                  icon: const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        child: BlocBuilder<ThemeCubit, ThemeState>(
                          builder: (context, state) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    state.theme ? 'Light Theme' : 'Dark Theme'),
                                Switch(
                                  trackOutlineWidth:
                                      const MaterialStatePropertyAll(0),
                                  thumbIcon: MaterialStatePropertyAll(
                                    state.theme
                                        ? const Icon(Icons.light_mode_sharp)
                                        : const Icon(Icons.mode_night_rounded),
                                  ),
                                  value: state.theme,
                                  onChanged: (value) {
                                    context.read<ThemeCubit>().changeTheme();
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      PopupMenuItem(
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              context
                                  .read<LoginBloc>()
                                  .add(const LoginEvent.logoutRequested());

                              GoRouter.of(context).goNamed('login');
                            },
                            child: const Text('Logout'),
                          ),
                        ),
                      ),
                    ];
                  },
                ),
              ],
              floating: true,
              snap: true,
            ),
          ],
          body: BlocConsumer<StoriesBloc, StoriesState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                storiesError: (errorMessage) {
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
              return RefreshIndicator(
                onRefresh: () async {
                  await Future.delayed(const Duration(seconds: 1));
                  if (context.mounted) {
                    context
                        .read<StoriesBloc>()
                        .add(const StoriesEvent.getStories());
                  }
                },
                child: state.maybeWhen(
                  orElse: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  storiesLoading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  storiesLoaded: (story) {
                    return ListView.builder(
                      itemCount: story.length,
                      itemBuilder: (context, index) {
                        final stories = story[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),

                            //profile, nama dan tanggal posting
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(stories.photoUrl),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  stories.name,
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                      letterSpacing: 0.5,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  '● ${DateTimeFormat.formatDateTime(stories.createdAt)}',
                                  style: GoogleFonts.instrumentSans(
                                    textStyle: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),

                            //gambar postingan
                            GestureDetector(
                                onTap: () async {
                                  context.read<StoriesDetailBloc>().add(
                                        StoriesDetailEvent.getDetailStories(
                                            stories.id),
                                      );

                                  GoRouter.of(context).goNamed('detail');
                                },
                                child: Center(
                                    child: Image.network(stories.photoUrl))),

                            const SizedBox(height: 10),

                            //deskripsi postingan
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    stories.name,
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                        letterSpacing: 0.5,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  ReadMoreText(
                                    '${stories.description} ',
                                    trimLines: 1,
                                    trimMode: TrimMode.Line,
                                    trimCollapsedText: 'more',
                                    trimExpandedText: 'less',
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        );
                      },
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
