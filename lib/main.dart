import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_demo/video_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
  SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(
          index: index,
          children: const [
            VideoPage(),
            HomePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call_outlined), label: "视频"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "主页")
          ],
        ),
      ),
    );
  }
}
