import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:yt_clone/screens/components/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Color color_theme =
        MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.black
            : Colors.white;

    return Scaffold(
      appBar: buildAppBar(context, color_theme),
      body: Body(),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    Color color_theme =
        MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.black
            : Colors.white;
    return BottomNavigationBar(
      fixedColor: color_theme,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: color_theme,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgIcon(
            color: Colors.red,
            icon: SvgIconData(
              "assets/logo/youtube-shorts.svg",
            ),
          ),
          label: 'Shorts',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add,
            color: color_theme,
          ),
          label: "Upload",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.subscriptions_outlined,
            color: color_theme,
          ),
          label: 'Subscriptions',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.library_add,
              color: color_theme,
            ),
            label: "Library")
      ],
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }

  AppBar buildAppBar(BuildContext context, Color color_theme) {
    return AppBar(
      title: Container(
        child: Image.asset(
          MediaQuery.of(context).platformBrightness == Brightness.light
              ? "assets/logo/yt_logo_rgb_light.png"
              : "assets/logo/yt_logo_rgb_dark.png",
          height: 20,
        ),
      ),
      actions: <Widget>[
        Icon(
          Icons.cast,
          color: color_theme,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.notifications,
          color: color_theme,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.search_outlined,
          color: color_theme,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.person,
          color: color_theme,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
