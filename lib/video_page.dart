import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    Widget widgetList(Widget widget, String text) {
      return Column(
        children: [
          widget,
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      );
    }

    ;
    Widget body(BuildContext context) {
      return Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/image/background.png",
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
              top: 25,
              left: 20,
              child: Row(
                children: [
                  Text(
                    "关注",
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "推荐",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ],
              )),
          Positioned(
              bottom: 30,
              right: 60,
              child: SizedBox(
                width: 20,
                height: 20,
                child: Image.asset("assets/image/music1.png"),
              )),
          Positioned(
              bottom: 50,
              right: 90,
              child: SizedBox(
                width: 20,
                height: 20,
                child: Image.asset("assets/image/music2.png"),
              )),
          Positioned(
            bottom: 40,
            right: 10,
            child: Container(
              width: 80,
              height: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 70,
                    child: Stack(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                image: AssetImage("assets/image/head.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 20,
                            child: Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/image/circle.png"))),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                            ))
                      ],
                    ),
                  ),
                  widgetList(
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 35,
                      ),
                      "68"),
                  widgetList(
                      SizedBox(
                        width: 30,
                        child: Image.asset("assets/image/message.png"),
                      ),
                      "9"),
                  widgetList(
                      SizedBox(
                        width: 30,
                        child: Image.asset("assets/image/share.png"),
                      ),
                      "12"),
                  Container(
                    width: 75,
                    height: 75,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/image/cd.png"))),
                    child: SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset("assets/image/circle.png"),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 20,
              child: Container(
                padding: EdgeInsets.only(left: 15),
                height: 95,
                width: MediaQuery.of(context).size.width * 0.65,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("莫妮卡",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("成都的春熙路边边上，测试文字内容额哈哈哈哈山大佛撒撒打算多发久打这么多",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 18,
                            child: Image.asset("assets/image/music3.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              "莫妮卡原创的音乐",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      );
    }

    return Scaffold(body: body(context));
  }
}
