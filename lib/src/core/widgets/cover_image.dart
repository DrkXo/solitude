import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CoverImage extends StatelessWidget {
  final String? imagePath;
  final BoxFit fit;
  final double? width;
  final double? height;

  const CoverImage({
    super.key,
    required this.imagePath,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    if (imagePath == null) {
      return const SizedBox.shrink();
    }

    final bytes = decodeDataUrl(imagePath!);
    if (bytes != null) {
      return Image.memory(
        bytes,
        fit: fit,
        width: width,
        height: height,
      );
    }

    // Fallback to network or asset if not data URL
    if (imagePath!.startsWith('http')) {
      return Image.network(
        imagePath!,
        fit: fit,
        width: width,
        height: height,
      );
    } else {
      return Image.asset(
        imagePath!,
        fit: fit,
        width: width,
        height: height,
      );
    }
  }
}