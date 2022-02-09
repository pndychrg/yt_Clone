import 'package:flutter/material.dart';
import 'package:yt_clone/data.dart';
import 'package:yt_clone/screens/video_screen/components/body.dart';

class VideoScreen extends StatelessWidget {
  final Video video;
  const VideoScreen({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Image.network(video.thumbnailUrl)),
    );
  }
}
