import 'package:flutter/material.dart';
import 'package:popular_movies/common/api/services/youtube_iframe.dart';

class TabTrailers extends StatelessWidget {

  late String urlId;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (BuildContext context, index) => YouTubePlay(url: urlId),
      itemCount: 3,
    );
  }
}
