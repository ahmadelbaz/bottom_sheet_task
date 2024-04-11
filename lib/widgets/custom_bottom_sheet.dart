import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomBottomSheet extends ConsumerWidget {
  final Widget child;
  const CustomBottomSheet({required this.child, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return child;
  }
}
