import 'package:flutter/material.dart';
import 'package:wally_app/constants.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Text(
          "Download Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
