import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yt_clone/data.dart';

class IconRow extends StatelessWidget {
  final Video video;

  const IconRow({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Icon(Icons.thumb_up_alt_outlined),
                  Text(video.likes),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
