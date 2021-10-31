import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sen_rules/widgets/introduction_page1.dart';

class OpenPage extends StatefulWidget {
  const OpenPage({Key? key}) : super(key: key);

  @override
  _OpenPageState createState() => _OpenPageState();
}

class _OpenPageState extends State<OpenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => IntroductionPage1())
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/logo-senRules.png',
              width: MediaQuery.of(context).size.width / 1.3,
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 2,
            )
          ],
        ),
      ),
    ));
  }
}
