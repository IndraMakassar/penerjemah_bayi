import 'package:flutter/material.dart';
import 'package:penerjemah_bayi/components/history.dart';
import 'package:penerjemah_bayi/components/record_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 8, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning,",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Mom & Baby",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                  iconSize: 32,
                  color: Colors.black,
                )
              ],
            ),
          ),
          const SizedBox(height: 32),
          const Text(
            "Tap To Record",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          const RecordButton(),
          const SizedBox(height: 48),
          const History(),
        ],
      ),
    );
  }
}
