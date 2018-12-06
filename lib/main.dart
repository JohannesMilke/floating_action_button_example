import 'package:advent6_floating_action_button/widget/color_speed_dial.dart';
import 'package:advent6_floating_action_button/widget/stroke_speed_dial.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'FloatingActionButton';
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: appTitle,
        home: MainPage(appTitle: appTitle),
      );
}

class MainPage extends StatelessWidget {
  final String appTitle;

  const MainPage({this.appTitle});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Container(),
        floatingActionButton: Row(
          children: <Widget>[
            ColorSpeedDial(onSelected: (Color color) {}),
            StrokeSpeedDial(onSelected: (double strokeWidth) {}),
          ],
        ),
      );
}
