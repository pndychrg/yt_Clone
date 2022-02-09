import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:yt_clone/data.dart';

class IconRow extends StatelessWidget {
  final Video video;

  const IconRow({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              width: 50,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Icon(Icons.thumb_up_alt_outlined),
                  Text(video.likes),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Icon(Icons.thumb_down_alt_outlined),
                  Text("Dislike"),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Icon(Icons.share),
                  Text("Share"),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Icon(Icons.download),
                  Text("Download"),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Icon(Icons.add_to_photos_outlined),
                  Text("Save"),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Icon(Icons.cut_outlined),
                  Text("Cut"),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
          ],
        ),
      ),
    );
  }
}
