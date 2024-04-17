import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GallerySection extends ConsumerWidget {
  final List<String> images;
  const GallerySection({required this.images, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: AppSizes.s225,
      child: ListView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Row(
              children: [
                Image.network(
                  images[index],
                  alignment: Alignment.topCenter,
                  width: AppSizes.s150,
                  height: AppSizes.s225,
                  fit: BoxFit.cover,
                ),
                widthSpace(AppSizes.s6),
              ],
            ),
          );
        },
      ),
    );
  }
}
