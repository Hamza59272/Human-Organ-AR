import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Video_player Test',
      home: VideoPlayerApp('sample_video.mp4','test'),
    );
  }
}


class VideoPlayerApp extends StatefulWidget {
  final url, fileName;

  VideoPlayerApp(this.url,  this.fileName);

  @override
  _VideoPlayerApp createState() => _VideoPlayerApp(this.url, this.fileName);
}

class _VideoPlayerApp extends State<VideoPlayerApp> {
  var _url, _fileName;
  VideoPlayerController _controller;
  ChewieController _chewieController;

  bool startedPlaying = false;
  num _stackViewIndex = 1;

  _VideoPlayerApp(this._url, this._fileName);
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/function.mp4");
    // this is the evil part : issue between chewie & video_player
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
    //

    _chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 16.0 / 9.0,
      allowedScreenSleep: false,
      autoPlay: true,
      autoInitialize : true,
      allowFullScreen : true,
      looping: true,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_fileName),
      ),
      body:  IndexedStack(
          index: _stackViewIndex,
          children :[
            Container (
              color: Colors.black,
              child : Center(
                  child:AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        VideoPlayer(_controller),
                        VideoProgressIndicator(_controller, allowScrubbing: true),
                      ],
                    ),
                  )
              ),
            ),
            Container (
                child : SafeArea(
                  child : Container(
                      child: Center(
                          child: CircularProgressIndicator()
                      )
                  ),
                )
            ),
          ]
      ),
      floatingActionButton: FloatingActionButton(
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
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

}