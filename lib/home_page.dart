import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget listTitle(Widget widget, String text) {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 10),
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                  widget,
                  Text("$text", style: TextStyle(fontSize: 12))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.chevron_right_outlined,
                color: Colors.grey,
                size: 20,
              ),
            )
          ],
        ),
      );
    }

    Widget widgetList(Widget widget, String text) {
      return Column(
        children: [
          widget,
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              text,
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      );
    }

    Widget body = Stack(
      children: [
        Image.asset("assets/image/backgroud.png"),
        Positioned(
            top: 40,
            right: 10,
            child: SizedBox(
              width: 20,
              child: Image.asset("assets/image/home.png"),
            )),
        Padding(
          padding: EdgeInsets.only(top: 40),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 13, right: 13),
                width: MediaQuery.of(context).size.width,
                height: 265,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: 80,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 50,
                                    child: Image.asset("assets/image/dog.png"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("编辑资料",
                                            style: TextStyle(
                                              fontSize: 10,
                                            )),
                                        Icon(
                                          Icons.edit,
                                          size: 13,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                          Expanded(
                              child: SizedBox(
                            height: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("千尉"),
                                Row(
                                  children: [
                                    Container(
                                      width: 35,
                                      height: 12,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.lightBlue,
                                              Colors.lightGreen.shade100,
                                            ],
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                          )),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.male,
                                            size: 13,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "22岁",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 9),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      width: 30,
                                      height: 12,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          color: Colors.yellow.shade700),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 12,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "18",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 9),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "ID:9527945",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Lv.16",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Container(
                                        width: 90,
                                        height: 8,
                                        margin: EdgeInsets.only(
                                          left: 10,
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: LinearProgressIndicator(
                                          value: 0.5,
                                          valueColor: AlwaysStoppedAnimation(
                                              Colors.blue.shade300),
                                          backgroundColor: Colors.grey.shade200,
                                          minHeight: 8,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          )),
                          Container(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.chevron_right_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          widgetList(
                              Text("23",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  )),
                              "关注"),
                          widgetList(
                              Text("65",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  )),
                              "粉丝"),
                          widgetList(
                              Text("12",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  )),
                              "小视频"),
                          widgetList(
                              Container(
                                width: 35,
                                height: 25,
                                //  color: Colors.red,
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Text("3",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                          )),
                                    ),
                                    Positioned(
                                        right: 0,
                                        top: 0,
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 14,
                                          height: 14,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.red,
                                          ),
                                          child: Text(
                                            "3",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              "最近来访"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          widgetList(
                              SizedBox(
                                width: 45,
                                child: Image.asset("assets/image/i_03.png"),
                              ),
                              "消息"),
                          widgetList(
                              SizedBox(
                                width: 45,
                                child: Image.asset("assets/image/i_05.png"),
                              ),
                              "我的发布"),
                          widgetList(
                              SizedBox(
                                width: 45,
                                child: Image.asset("assets/image/i_07.png"),
                              ),
                              "等级"),
                          widgetList(
                              SizedBox(
                                width: 45,
                                child: Image.asset("assets/image/i_10.png"),
                              ),
                              "分享收益"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13, right: 13, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                      width: MediaQuery.of(context).size.width / 2 - 15,
                      height: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [Colors.white, Colors.lightBlue.shade50],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "余额",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: 70,
                                height: 20,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(left: 8),
                                child: Text(
                                  "首充奖励",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.orange.shade300,
                                    borderRadius: BorderRadius.circular(10)),
                              )
                            ],
                          ),
                          Text("我的砖石: 9980", style: TextStyle(fontSize: 13))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                      width: MediaQuery.of(context).size.width / 2 - 15,
                      height: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [Colors.white, Colors.orange.shade50],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "收益",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text("赚取您的第一桶金!", style: TextStyle(fontSize: 13))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, right: 13, left: 13, bottom: 40),
                height: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  children: [
                    listTitle(
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          width: 15,
                          child: Image.asset("assets/image/i_17.png"),
                        ),
                        "礼物贡献榜"),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 20),
                      child: Divider(),
                    ),
                    listTitle(
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          width: 11,
                          child: Image.asset("assets/image/i_21.png"),
                        ),
                        "手机认证"),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 20),
                      child: Divider(),
                    ),
                    listTitle(
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          width: 15,
                          child: Image.asset("assets/image/i_25.png"),
                        ),
                        "主播中心"),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 20),
                      child: Divider(),
                    ),
                    listTitle(
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          width: 15,
                          child: Image.asset("assets/image/i_27.png"),
                        ),
                        "帮助与反馈"),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 20),
                      child: Divider(),
                    ),
                    listTitle(
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          width: 15,
                          child: Image.asset("assets/image/i_29.png"),
                        ),
                        "联系客户"),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 20),
                      child: Divider(),
                    ),
                    listTitle(
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          width: 15,
                          child: Image.asset("assets/image/i_32.png"),
                        ),
                        "设置"),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: body,
    );
  }
}
