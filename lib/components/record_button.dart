import 'package:flutter/material.dart';

class RecordButton extends StatefulWidget {
  const RecordButton({Key? key}) : super(key: key);

  @override
  _RecordButtonState createState() => _RecordButtonState();
}

class _RecordButtonState extends State<RecordButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 255, 215, 239)),
        iconSize: MaterialStatePropertyAll(96),
        iconColor: MaterialStatePropertyAll(Color.fromARGB(255, 237, 90, 178)),
        fixedSize: MaterialStatePropertyAll<Size>(Size(220, 220)),
      ),
      child: const Icon(Icons.mic),
    );
  }
}
