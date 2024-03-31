import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:story_u/features/auth/datasource/data/user_data.dart';
import 'package:story_u/features/detail_stories/bloc/stories_detail_bloc.dart';
import 'package:story_u/features/stories/cubit/theme_cubit.dart';
import 'package:story_u/features/stories/bloc/stories_bloc.dart';
import 'package:story_u/features/stories/presentations/widgets/setting.dart';
import 'package:story_u/features/stories/presentations/widgets/date_time.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../auth/bloc/login_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserDataLocal userDataLocal = UserDataLocal();
    context.read<StoriesBloc>().add(const StoriesEvent.getStories());
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              backgroundColor: context.select((ThemeCubit cubit) {
                final ThemeData theme = cubit.state.themeData;
                return theme.brightness == Brightness.dark
                    ? const Color.fromARGB(255, 82, 82, 88)
                    : const Color.fromARGB(255, 250, 194, 96);
              }),
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
                //name
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return FutureBuilder<String?>(
                      future: userDataLocal.getName(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          final String? name = snapshot.data;
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              '${AppLocalizations.of(context)!.hi} ${state.maybeWhen(
                                loginSuccess: (loginResult) => loginResult.name,
                                orElse: () => name ?? 'perlu login lagi',
                              )}!',
                            ),
                          );
                        }
                      },
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
                                Text(state.themeData.brightness ==
                                        Brightness.light
                                    ? 'Light Theme'
                                    : 'Dark Theme'),
                                Switch(
                                  trackOutlineWidth:
                                      const MaterialStatePropertyAll(0),
                                  thumbIcon: MaterialStatePropertyAll(
                                    state.themeData.brightness ==
                                            Brightness.light
                                        ? const Icon(Icons.light_mode_sharp)
                                        : const Icon(Icons.mode_night_rounded),
                                  ),
                                  value: state.themeData.brightness ==
                                      Brightness.light,
                                  onChanged: (value) {
                                    context.read<ThemeCubit>().changeTheme(value
                                        ? ThemeData.light()
                                        : ThemeData.dark());
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
                            child: Text(AppLocalizations.of(context)!.logout),
                          ),
                        ),
                      ),
                    ];
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.language),
                  onPressed: () {
                    languageDialog(context);
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            GoRouter.of(context).goNamed('add');
          },
          child: const Icon(Icons.add_box),
        ),
      ),
    );
  }
}
