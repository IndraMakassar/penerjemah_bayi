import 'dart:async';

import 'package:flutter/material.dart';
import 'package:penerjemah_bayi/components/record_button.dart';
import 'package:penerjemah_bayi/pages/result_page.dart';

class RecordingPage extends StatefulWidget {
  const RecordingPage({Key? key}) : super(key: key);

  @override
  _RecordingPageState createState() => _RecordingPageState();
}

class _RecordingPageState extends State<RecordingPage> {
  int seconds = 6;

  @override
  void initState() {
    super.initState();

    Timer.periodic(new Duration(seconds: 1), (timer) {
      if (seconds >= 0) {
        setState(() {
          seconds--;
        });
      }

      if (seconds < 0) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ResultPage()));
        timer.cancel();
      }

      print(seconds);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close),
                iconSize: 32,
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 128),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      (seconds >= 0)
                          ? Text("00:0$seconds", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold))
                          : SizedBox(),
                      SizedBox(height: (seconds >= 0) ? 32 : 0),
                      RecordButton(onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
                      }),
                      SizedBox(height: 32),
                      Text(
                        "Listening...",
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
