import 'package:bottom_sheet_task_ahmad_elbaz/providers/all_providers.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/string_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangeThemeBar extends ConsumerWidget {
  const ChangeThemeBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.s18),
      child: ListTile(
        leading: const Image(image: AssetImage(AppAssets.themeIcon)),
        title: Text(
          AppStrings.theme,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        trailing: Switch(
          value: ref.watch(isLightStateProvider),
          onChanged: (value) {
            ref.read(isLightStateProvider.notifier).state =
                !ref.watch(isLightStateProvider);
          },
        ),
      ),
    );
  }
}
