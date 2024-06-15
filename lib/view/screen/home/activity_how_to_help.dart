import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:kalyanbazar/res/component/header.dart';
import 'package:kalyanbazar/res/component/responsive_widget.dart';
import 'package:kalyanbazar/res/widget/images_path.dart';
 

class ActivityHowToHelp extends StatefulWidget {
  const ActivityHowToHelp({super.key});

  @override
  State<ActivityHowToHelp> createState() => _ActivityHowToHelpState();
}

class _ActivityHowToHelpState extends State<ActivityHowToHelp> {
  var titles = "How To Help";
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
              ResponsiveWidget.isMediumScreen(context)
                  ? const SizedBox()
                  : Expanded(
                      child: Container(
                      child: WebviewScaffold(
                        url: "https://www.google.com/",
                      ),
                    ))
              /* Container(
              child: WebView(
                initialUrl: "https://flutter.dev",
              ),
            ) */
            ],
          ),
        ),
      )
      ),
    );
  }
}
