import 'package:flutter/material.dart';
import 'package:penerjemah_bayi/components/history_item.dart';
import 'package:penerjemah_bayi/components/record_button.dart';
import 'package:penerjemah_bayi/pages/recording_page.dart';
import 'package:accordion/accordion.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHistoryOpen = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 8, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning,",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Mom & Baby",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
          SizedBox(height: (isHistoryOpen) ? 64 : 128),
          const Text(
            "Tap To Record",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 48),
          RecordButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const RecordingPage()));
            },
          ),
          const SizedBox(height: 32),
          // const History(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 32, left: 16, right: 16),
                  child: Accordion(
                    children: [
                      AccordionSection(
                        headerPadding: EdgeInsets.all(8),
                        headerBorderColor: Colors.black,
                        headerBorderColorOpened: Colors.black,
                        headerBorderRadius: 16,
                        headerBorderWidth: 1,
                        headerBackgroundColor: Colors.white,
                        rightIcon: Icon(Icons.keyboard_arrow_down),
                        contentBorderColor: Colors.black,
                        header: Text(
                          'History',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        content: Container(
                          height: 100,
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return const HistoryItem();
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
