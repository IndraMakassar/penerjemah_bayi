import 'package:flutter/material.dart';

class MyBabyPage extends StatefulWidget {
  const MyBabyPage({Key? key}) : super(key: key);

  @override
  _MyBabyPageState createState() => _MyBabyPageState();
}

class _MyBabyPageState extends State<MyBabyPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("My Baby"),
    );
  }
}
