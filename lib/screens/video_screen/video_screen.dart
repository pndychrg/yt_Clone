import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yt_clone/data.dart';
import 'package:yt_clone/screens/video_screen/components/body.dart';

class VideoScreen extends StatelessWidget {
  final Video video;
  VideoScreen({Key? key, required this.video}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(video: video),
      ),
    );
  }
}
