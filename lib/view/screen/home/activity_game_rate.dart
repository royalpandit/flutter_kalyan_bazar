import 'package:flutter/material.dart';
import 'package:kalyanbazar/res/component/header.dart';
import 'package:kalyanbazar/res/widget/images_path.dart';
 
class ActivityGameRate extends StatefulWidget {
  const ActivityGameRate({super.key});

  @override
  State<ActivityGameRate> createState() => _ActivityGameRate();
}

class _ActivityGameRate extends State<ActivityGameRate> {
  var titles = "Game Rate";
 

    var walletCount = "1000";
   var imageWallet = ImagesPath.wallet;
  var imageNotifications = "assets/images/kbr.png";
  var imageMenu = ImagesPath.back;
  onPressBacks() {
    print("Click This Icon");
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                child: Header(
                  title: titles,
                  onPressBtn: onPressBacks(),
                  lefticon: imageMenu,
                  walletTitle: walletCount,
                  rightrighticon: imageWallet,
                ),
              ),
              
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Text("Single Digit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                          Spacer(),
                          Text("10 KA 95",style: TextStyle(color: Colors.yellow[400]),),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Text("Jodi Digit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                          Spacer(),
                          Text("10 KA 950",style: TextStyle(color: Colors.yellow[400]))
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Text("Single Pana",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                          Spacer(),
                          Text("10 KA 1400",style: TextStyle(color: Colors.yellow[400]))
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Text("Double Pana",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                          Spacer(),
                          Text("10 KA 3000",style: TextStyle(color: Colors.yellow[400]))
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Text("Triple Pana",style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w500)),
                          Spacer(),
                          Text("10 KA 7000",style: TextStyle(color: Colors.yellow[400]))
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Text("Half Sangam",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                          Spacer(),
                          Text("10 KA 10000",style: TextStyle(color: Colors.yellow[400]))
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Text("Full Sangam",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                          Spacer(),
                          Text("10 KA 100000",style: TextStyle(color: Colors.yellow[400]))
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Text("Jodi Digit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                          Spacer(),
                          Text("10 KA 950",style: TextStyle(color: Colors.yellow[400]))
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Text("Jodi Digit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                          Spacer(),
                          Text("10 KA 950",style: TextStyle(color: Colors.yellow[400]))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
