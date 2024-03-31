// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:story_u/features/stories/cubit/language_cubit.dart';
import 'package:story_u/features/stories/datasource/data/language_local_storage.dart';

void languageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Choose Language'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('Indonesia'),
              onTap: () async {
                final cubit = BlocProvider.of<LanguageCubit>(context);
                cubit.changeLanguage('id', 'ID');
                await LanguagePreferences.saveLanguage('id', 'ID');
                GoRouter.of(context).pop();
              },
            ),
            ListTile(
              title: const Text('English'),
              onTap: () async {
                final cubit = BlocProvider.of<LanguageCubit>(context);
                cubit.changeLanguage('en', 'US');
                await LanguagePreferences.saveLanguage('en', 'US');
                GoRouter.of(context).pop();
              },
            ),
          ],
        ),
      );
    },
  );
}
