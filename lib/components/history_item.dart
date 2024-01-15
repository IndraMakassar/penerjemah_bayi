import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HistoryItem extends StatefulWidget {
  const HistoryItem({Key? key}) : super(key: key);

  @override
  _HistoryItemState createState() => _HistoryItemState();
}

class _HistoryItemState extends State<HistoryItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        width: 314,
        height: 58,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color.fromARGB(255, 217, 217, 217),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 8),
            Container(
              width: 43,
              height: 43,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 237, 90, 178),
                borderRadius: BorderRadius.circular(999),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/hungry.svg',
                    width: 33,
                    height: 33,
                  )
                ],
              ),
            ),
            const SizedBox(width: 8),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hungry",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "Time: 7:00 AM",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
