import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:numicorn_mobile/core/base/view/base_widget.dart';
import 'package:numicorn_mobile/core/extension/color_extension.dart';
import 'package:numicorn_mobile/core/extension/context_extension.dart';
import 'package:numicorn_mobile/core/extension/font_extension.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:video_player/video_player.dart';
import '../../../../core/extension/font_extension.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

import '../view_model/test_view_model.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
      viewModel: TestViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, TestViewModel viewModel) =>
          Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('StarMenu demo'),
        ),
        body: Container(
          child: VideoApp(),
        ),
      ),
    );
  }
}

class VideoApp extends StatefulWidget {
  const VideoApp({key});

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;
  late FlutterGifController controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('asset/question/gitarist.webm')
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
      backgroundColor: context.appColor,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: context.width * 0.9,
          child: _controller.value.isInitialized
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GifImage(
                      controller: controller,
                      image: AssetImage("asset/question/gitarist.gif"),
                    ),
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late FlutterGifController controller1;
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    controller1 = FlutterGifController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.network(
          'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf'),
      // body: PDF(
      //   nightMode: false,
      //   enableSwipe: true,
      //   // swipeHorizontal: true,
      //   preventLinkNavigation: true,
      //   fitEachPage: false,
      //   autoSpacing: false,
      //   pageFling: false,
//
      //   onError: (error) {
      //     print(error.toString());
      //   },
      //   onPageError: (page, error) {
      //     print('$page: ${error.toString()}');
      //   },
      // ).fromAsset('asset/question/book.pdf'),

      // body: SfPdfViewer.asset(
      //   'asset/question/book.pdf',
      //   key: _pdfViewerKey,
      //   canShowPaginationDialog: true,
      // ),
    );
  }
}
