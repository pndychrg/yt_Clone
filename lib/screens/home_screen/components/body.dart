import 'package:flutter/material.dart';
import 'package:yt_clone/data.dart';
import 'package:yt_clone/screens/home_screen/components/video_card.dart';
import 'package:yt_clone/screens/video_screen/video_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: videos.length,
          itemBuilder: (context, index) => VideoCard(
                video: videos[index],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              VideoScreen(video: videos[index])));
                },
              )),
    );
  }
}
