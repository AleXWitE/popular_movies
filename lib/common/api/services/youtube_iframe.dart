import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YouTubePlay extends StatefulWidget {
  final String url;

  YouTubePlay({Key ?key, required this.url}) : super(key: key);

  @override
  _YouTubePlayState createState() => _YouTubePlayState();
}

class _YouTubePlayState extends State<YouTubePlay> {
  late YoutubePlayerController _controller; //объявляем контроллер для работы iframe

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.url,
      params: const YoutubePlayerParams(
        showControls: true,
        autoPlay: false,
        // showFullscreenButton: true,
        desktopMode: true,
      ),
    );
    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    };
    _controller.onExitFullscreen = () {
    };
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame(); //определяем под переменную сам iframe
    return YoutubePlayerControllerProvider(
      controller: _controller,
      child: player,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}
