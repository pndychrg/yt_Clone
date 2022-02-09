import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yt_clone/data.dart';
import 'package:timeago/timeago.dart' as timeago;

class VideoCard extends StatelessWidget {
  const VideoCard({Key? key, required this.video, required this.press})
      : super(key: key);

  final Video video;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    Color color_theme =
        MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.black
            : Colors.white;
    return InkWell(
      onTap: press,
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              Image.network(
                video.thumbnailUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 220,
              ),
              Container(
                padding: EdgeInsets.all(3),
                margin: EdgeInsets.only(bottom: 4),
                child: Text(
                  video.duration,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey.shade50,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage:
                          NetworkImage(video.author.profileImageUrl),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        video.title,
                        style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1.0, left: 50),
            child: Opacity(
              opacity: 0.5,
              child: Row(
                children: <Widget>[
                  Text(
                    video.author.username + " ",
                    style: GoogleFonts.roboto(),
                  ),
                  SizedBox(
                    width: 5,
                    child: Text("|"),
                  ),
                  Text(" " + video.viewCount + " views "),
                  SizedBox(
                    width: 5,
                    child: Text("|"),
                  ),
                  Text(" ${timeago.format(video.timestamp)}"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
