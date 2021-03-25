import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';
import 'size_config.dart';

class FullscreenVideo extends StatefulWidget {
  late final VideoPlayerController controller;
  FullscreenVideo({Key? key, required this.controller}) : super(key: key);

  @override
  _FullScreenState createState() => _FullScreenState();
}

class _ControllerVideo extends StatefulWidget {
  late final VideoPlayerController controller;

  _ControllerVideo(Key? key, this.controller) : super(key: key);

  @override
  _ControllerVideoState createState() => _ControllerVideoState();
}

class _ControllerVideoState extends State<_ControllerVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    _controller = widget.controller;
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.height / 3
                  : null,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  VideoPlayer(_controller),
                  _ControlsOverlay(controller: _controller),
                  VideoProgressIndicator(_controller, allowScrubbing: true),
                  Align(
                      alignment: Alignment.topLeft,
                      child: BackButton(color: Colors.white)),
                ],
              ),
            )));
  }
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({Key? key, required this.controller})
      : super(key: key);

  static const _examplePlaybackRates = [
    0.5,
    1.0,
    1.5,
    2.0,
  ];

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
        Align(
          alignment: Alignment.topRight,
          child: PopupMenuButton<double>(
            initialValue: controller.value.playbackSpeed,
            tooltip: 'Playback speed',
            onSelected: (speed) {
              controller.setPlaybackSpeed(speed);
            },
            itemBuilder: (context) {
              return [
                for (final speed in _examplePlaybackRates)
                  PopupMenuItem(
                    value: speed,
                    child: Text('${speed}x',
                        style: TextStyle(
                            fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  )
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                // Using less vertical padding as the text is also longer
                // horizontally, so it feels like it would need more spacing
                // horizontally (matching the aspect ratio of the video).
                vertical: 12,
                horizontal: 16,
              ),
              child: Text('${controller.value.playbackSpeed}x',
                  style: TextStyle(
                      fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }
}

class _FullScreenState extends State<FullscreenVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SizeConfig.backroundCOLOR,
      body: _ControllerVideo(widget.key, widget.controller),
    );
  }
}
