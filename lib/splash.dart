import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/first.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => InstaScreen()),
            (Route<dynamic> route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
 Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.065,
                    backgroundImage: NetworkImage(
                        "https://www.thephotoargus.com/wp-content/uploads/2017/07/earth-1.jpg")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("user id "),
                ),
              ]),

             