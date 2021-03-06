import 'package:flutter/material.dart';
import 'package:jamhs_flutter/fullscreenVid.dart';
import 'package:video_player/video_player.dart';
import 'size_config.dart';

class VideoView extends StatefulWidget {
  final String src;
  final String title;
  final String desc;

  VideoView(
      {Key? key, required this.src, required this.title, required this.desc})
      : super(key: key);

  @override
  _VideoViewState createState() => _VideoViewState();
}

class _RemoteVideo extends StatefulWidget {
  final String src;
  final String title;
  final String desc;

  _RemoteVideo(Key? key, this.src, this.title, this.desc) : super(key: key);

  @override
  _RemoteVideoState createState() => _RemoteVideoState();
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
        AnimatedSwitcher(
          duration: Duration(milliseconds: 50),
          reverseDuration: Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? SizedBox.shrink()
              : Container(
                  color: Colors.black26,
                  child: Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 100.0,
                    ),
                  ),
                ),
        ),
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

class _RemoteVideoState extends State<_RemoteVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      widget.src,
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    );

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(false);
    _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(padding: const EdgeInsets.only(top: 20.0)),
          Container(
            padding: const EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  VideoPlayer(_controller),
                  _ControlsOverlay(controller: _controller),
                  VideoProgressIndicator(_controller, allowScrubbing: true),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  FullscreenVideo(controller: _controller)));
                    },
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.fullscreen,
                          color: Colors.white,
                          size: SizeConfig.logoSize,
                        )),
                  )
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    SizeConfig.blockSizeHorizontal * 20,
                    SizeConfig.blockSizeVertical * 2,
                    SizeConfig.blockSizeHorizontal * 20,
                    SizeConfig.blockSizeVertical * 2),
                color: Color.fromARGB(255, 255, 255, 255),
                child: Text(
                  widget.desc,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.fontDISCRIPTIONSIZE,
                      fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}

class _VideoViewState extends State<VideoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SizeConfig.backroundCOLOR,
      appBar: AppBar(
        backgroundColor: SizeConfig.backroundCOLOR,
        title: Text(widget.title,
            style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.fontHEADERSIZE / 1.2,
                fontWeight: FontWeight.bold,
                fontFamily: "Futura")),
        centerTitle: true,
      ),
      body: _RemoteVideo(widget.key, widget.src, widget.title, widget.desc),
    );
  }
}
