import 'package:flutter/material.dart';
import 'package:survey_kit/src/widget/platform_view_registry/platform_view_registry.dart';
import 'package:web/web.dart' as web;

// TODO(rinzin): Temporary fix for web until
// [https://github.com/fluttercommunity/chewie/issues/688]
// is fixed on chewie
class WebVideoPlayer extends StatefulWidget {
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
  final bool loop;

  final bool controls;
  final double aspectRatio;

  @override
  State<WebVideoPlayer> createState() => _WebVideoPlayerState();
}

class _WebVideoPlayerState extends State<WebVideoPlayer> {
  bool isLoaded = false;
  @override
  void initState() {
    super.initState();
    platformViewRegistry.registerViewFactory(
      widget.src,
      (int viewId) {
        final url = '${widget.src}' '#t=${widget.startAt}';
        final video = web.HTMLVideoElement()
          ..src = url
          ..autoplay = widget.autoplay
          ..loop = widget.loop
          ..controls = widget.controls;

        video.style.border = 'none';
        video.style.height = '100%';
        video.style.width = '100%';

        // Remove the download option from controls
        // Allows Safari iOS to play the video inline
        video
          ..setAttribute('controlsList', 'nodownload')
          ..setAttribute('playsinline', 'true');

        return video;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: widget.aspectRatio,
          child: HtmlElementView(
            onPlatformViewCreated: (id) {
              setState(() {
                isLoaded = true;
              });
            },
            viewType: widget.src,
          ),
        ),
        if (!isLoaded)
          const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
      ],
    );
  }
}
