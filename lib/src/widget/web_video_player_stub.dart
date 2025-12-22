import 'package:flutter/widgets.dart';

/// Fallback stub used on non-web platforms.
class WebVideoPlayer extends StatelessWidget {
  const WebVideoPlayer(
    this.src, {
    super.key,
    this.autoplay = false,
    this.controls = true,
    this.loop = false,
    this.startAt = 0,
    this.aspectRatio = 16 / 9,
  });

  final String src;
  final double startAt;
  final bool autoplay;
  final bool controls;
  final bool loop;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    // Not used on non-web platforms; keep widget lightweight.
    return const SizedBox.shrink();
  }
}
