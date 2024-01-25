import 'package:flutter/material.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBabyPage extends StatelessWidget {
  static bool isGirlSelected = true;

  const MyBabyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My Baby'),
            backgroundColor: Color.fromARGB(255, 255, 109, 158),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Let’s personalise your baby’s plan!',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage:
                        AssetImage("lib/assets/images/profile_baby.png"),
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(height: 25.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: MyBabyForm(),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class MyBabyForm extends StatefulWidget {
  const MyBabyForm({Key? key}) : super(key: key);

  @override
  _MyBabyFormState createState() => _MyBabyFormState();
}

class _MyBabyFormState extends State<MyBabyForm> {
  DateTime? _selectedDate;
  bool isBoy = false;
  String dropdownvalue = 'Mother';
  String countryvalue = 'United States';
  var items = [
    'Mother',
    'Father',
    'Grandmother',
    'Grandfather',
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: isBoy
                    ? Color.fromARGB(255, 90, 181, 255)
                    : Color.fromARGB(255, 255, 109, 158),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: SlidingSwitch(
              value: isBoy,
              width: 149,
              onChanged: (bool value) {
                setState(() {
                  isBoy = value;
                });
              },
              height: 40,
              animationDuration: const Duration(milliseconds: 200),
              onTap: () {},
              onDoubleTap: () {},
              onSwipe: () {},
              textOff: "Girl",
              textOn: "Boy",
              contentSize: 17,
              colorOn: Colors.white,
              colorOff: Colors.white,
              background: Colors.white,
              buttonColor: isBoy
                  ? Color.fromARGB(255, 90, 181, 255)
                  : Color.fromARGB(255, 255, 109, 158),
              inactiveColor: isBoy
                  ? Color.fromARGB(255, 90, 181, 255)
                  : Color.fromARGB(255, 255, 109, 158),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Baby`s First Name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      border: InputBorder.none)),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Baby`s Date Of Birth",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: InkWell(
                  onTap: () => _selectDate(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset("lib/assets/images/calendar.svg"),
                      Container(
                        height: 40,
                        child: Center(
                          child: _selectedDate != null
                              ? Text(
                                  "${_selectedDate!.toLocal().toString().split(' ')[0]}",
                                  style: TextStyle(fontSize: 15),
                                )
                              : Text(
                                  "Choose Date",
                                  style: TextStyle(fontSize: 15),
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "I am the child's",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: dropdownvalue,
                      items: <String>[
                        'Mother',
                        'Father',
                        'Grandmother',
                        'Grandfather'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          dropdownvalue = value!;
                        });
                      },
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SvgPicture.asset(
                          'lib/assets/images/dropdown.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Country",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: countryvalue,
                      items: <String>['Indonesia', 'China', 'United States']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          countryvalue = value!;
                        });
                      },
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SvgPicture.asset(
                          'lib/assets/images/dropdown.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      border: InputBorder.none)),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {},
          child: Text('Simpan'),
          style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 255, 109, 158),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
        ),
      ],
    );
  }
}
