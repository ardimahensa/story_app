// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:story_u/features/add_stories/cubit/add_stories_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddStories extends StatelessWidget {
  final TextEditingController _descriptionController = TextEditingController();
  AddStories({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AddStoriesCubit>().reset();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.addStories),
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pushNamed('home');
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<AddStoriesCubit, AddStoriesState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.image, size: 200),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              context.read<AddStoriesCubit>().pickImageGaleri();
                            },
                            child:
                                Text(AppLocalizations.of(context)!.fromGalery),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.read<AddStoriesCubit>().pickImageCamera();
                            },
                            child:
                                Text(AppLocalizations.of(context)!.fromCamera),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              imageLoaded: (imagePath) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.file(File(imagePath), height: 450),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _descriptionController,
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!
                                .descriptionStories,
                            border: const OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              context.read<AddStoriesCubit>().reset();
                            },
                            child: Text(AppLocalizations.of(context)!.tryAgain),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              final description =
                                  _descriptionController.text.trim();
                              if (description.isNotEmpty) {
                                try {
                                  await context
                                      .read<AddStoriesCubit>()
                                      .uploadImage(
                                          File(imagePath), description);
                                  GoRouter.of(context).go('/home');
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          AppLocalizations.of(context)!
                                              .failedUploadImage),
                                    ),
                                  );
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(AppLocalizations.of(context)!
                                        .descriptionCannotBeEmpty),
                                  ),
                                );
                              }
                            },
                            child:
                                Text(AppLocalizations.of(context)!.uploadImage),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              imageError: (errorMessage) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(errorMessage),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            context.read<AddStoriesCubit>().reset();
                          },
                          child: Text(AppLocalizations.of(context)!.tryAgain)),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
