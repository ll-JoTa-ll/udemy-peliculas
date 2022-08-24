import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoTrailerUrl extends StatefulWidget {
  VideoTrailerUrl({Key? key}) : super(key: key);

  @override
  State<VideoTrailerUrl> createState() => _VideoTrailerUrlState();
}

class _VideoTrailerUrlState extends State<VideoTrailerUrl> {
  final videoUrl = 'https://www.youtube.com/watch?v=lrCFmYD4114';

  YoutubePlayerController? _youtubePlayerController;
  late TextEditingController _idController;
  late TextEditingController _seekToController;

  @override
  void initState() {
    const videoId = 'br5cxQXKtuc';

    _youtubePlayerController = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
            autoPlay: false, mute: false, loop: false));

    super.initState();
  }

  @override
  void deactivate() {
    //_youtubePlayerController.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    //_youtubePlayerController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _youtubePlayerController!,
        showVideoProgressIndicator: true,
        onReady: () => debugPrint('Ready!!!'),
      ),
      builder: (context, player) {
        return Container(
          child: player,
        );
      },
    );
  }
}
