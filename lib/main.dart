import 'package:bottom_navigation_bar_v1/pages/screen1.dart';
import 'package:bottom_navigation_bar_v1/pages/screen2.dart';
import 'package:bottom_navigation_bar_v1/pages/screen3.dart';
import 'package:bottom_navigation_bar_v1/pages/screen4.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = const [
    Icon(
      Icons.people,
      size: 30,
    ),
    Icon(
      Icons.people,
      size: 30,
    ),
    Icon(
      Icons.add,
      size: 30,
    ),
    Icon(
      Icons.search,
      size: 30,
    ),
  ];
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Text("Curved Navigation bar"),
        backgroundColor: Colors.blue[300],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.transparent,
        animationDuration: Duration(milliseconds: 300),
      ),
      body: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Text("gg"),
      ),
    );
  }
}

Widget getSelectedWidget(index) {
  Widget widget;
  switch (index) {
    case 0:
      widget = Screen1();
      break;
    case 1:
      widget = Screen2();
      break;
    case 2:
      widget = Screen3();
      break;
    case 3:
      widget = Screen4();
      break;
    default:
      widget = Screen1();
  }

  return widget;
}
