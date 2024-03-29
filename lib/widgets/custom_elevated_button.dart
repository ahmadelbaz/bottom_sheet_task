import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomElevatedButton extends ConsumerWidget {
  final String text;
  const CustomElevatedButton({this.text = '', super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
