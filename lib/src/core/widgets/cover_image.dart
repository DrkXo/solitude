import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CoverImage extends StatefulWidget {
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
  State<CoverImage> createState() => _CoverImageState();
}

class _CoverImageState extends State<CoverImage> {
  Uint8List? _bytes;

  @override
  void initState() {
    super.initState();
    
    _decodeImage();
  }

  @override
  void didUpdateWidget(CoverImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.imagePath != widget.imagePath) {
      _decodeImage();
    }
  }

  void _decodeImage() {
    if (widget.imagePath != null) {
      _bytes = decodeDataUrl(widget.imagePath!);
      
    } else {
      _bytes = null;
      
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.imagePath == null) {
      return const SizedBox.shrink();
    }

    if (_bytes != null) {
      return Image.memory(
        _bytes!,
        fit: widget.fit,
        width: widget.width,
        height: widget.height,
      );
    }

    // Fallback to network or asset if not data URL
    if (widget.imagePath!.startsWith('http')) {
      return CachedNetworkImage(
        imageUrl: widget.imagePath!,
        fit: widget.fit,
        width: widget.width,
        height: widget.height,
        placeholder: (context, url) => const SizedBox.shrink(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      );
    } else {
      return Image.asset(
        widget.imagePath!,
        fit: widget.fit,
        width: widget.width,
        height: widget.height,
      );
    }
  }
}