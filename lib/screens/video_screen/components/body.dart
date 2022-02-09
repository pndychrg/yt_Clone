import 'package:flutter/material.dart';
import 'package:yt_clone/data.dart';
import 'package:timeago/timeago.dart' as timeago;

class Body extends StatefulWidget {
  const Body({
    Key? key,
    required this.video,
  }) : super(key: key);

  final Video video;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(
            widget.video.thumbnailUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 220,
          ),
          //Title
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
                child: Text(
              widget.video.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
          //views row
          Padding(
            padding: const EdgeInsets.only(top: 1.0, left: 10),
            child: Opacity(
              opacity: 0.5,
              child: Row(
                children: <Widget>[
                  Text(widget.video.viewCount + " views "),
                  SizedBox(
                    width: 5,
                    child: Text("|"),
                  ),
                  Text(" ${timeago.format(widget.video.timestamp)}"),
                ],
              ),
            ),
          ),
          //Icon Row
          SizedBox(
            height: 10,
          ),
          //User Panel
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            decoration: BoxDecoration(
                border: Border.symmetric(
              vertical: BorderSide.none,
              horizontal: BorderSide(
                width: 1,
                color: Colors.grey.shade300,
              ),
            )),
            child: Row(
              children: <Widget>[
                //id Logo
                Expanded(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            NetworkImage(widget.video.author.profileImageUrl),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      //Profile Name and Subscribe Button
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              widget.video.author.username,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (pressed == true) {
                                    pressed = false;
                                  } else {
                                    pressed = true;
                                  }
                                });
                              },
                              child: Text(
                                pressed == false ? "Subscribe" : "Subscribed",
                                style: TextStyle(
                                  color: pressed == false
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //Subsribers and Join Button
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Opacity(
                              opacity: 0.5,
                              child: Text(widget.video.author.subscribers +
                                  " subscribers"),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "JOIN",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(Icons.notifications)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
