import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:numicorn_mobile/core/extension/context_extension.dart';

class TransitionPage extends StatefulWidget {
  const TransitionPage({key});

  @override
  _TransitionPageState createState() => _TransitionPageState();
}

class _TransitionPageState extends State<TransitionPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('asset/app/unicorn_4.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          print("test");
          _controller.play();
        });
      });
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: context.width * 0.9,
          child: _controller.value.isInitialized
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: const Text(
                        'Seni buradan görmek çok güzel',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'PoppinsBold',
                          //color: Color.fromARGB(255, 96, 24, 76),
                        ),
                      ),
                    )
                  ],
                )
              : Container(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 0,
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
