import 'package:flutter/material.dart';
import 'package:popular_movies/common/api/services/youtube_iframe.dart';

class TabTrailers extends StatelessWidget {
// TODO для ютуба мне нужно получать айди фильма и в адрес для рест его подставлять сюда "https://api.themoviedb.org/3/movie/$id/videos?api_key="
  late String urlId;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (BuildContext context, index) => YouTubePlay(url: urlId),
      itemCount: 3,
    );
  }
}
