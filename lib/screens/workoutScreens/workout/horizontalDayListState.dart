import 'package:flutter/material.dart';

class HorizontalDayList extends StatefulWidget {
  const HorizontalDayList({Key? key}) : super(key: key);

  @override
  _HorizontalDayListState createState() => _HorizontalDayListState();
}

class _HorizontalDayListState extends State<HorizontalDayList> {
  List<String> weekdays = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"];

  Color activeCardColor = Colors.white;
  Color inactiveCardColor = Colors.black26;

  Color activeTextColor = Colors.black;
  Color inactiveTextColor = Colors.white;

  List<List<Color>> cardColorList = [
    [Colors.black26, Colors.white],
    [Colors.black26, Colors.white],
    [Colors.black26, Colors.white],
    [Colors.black26, Colors.white],
    [Colors.black26, Colors.white],
    [Colors.black26, Colors.white],
    [Colors.black26, Colors.white],
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: weekdays.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(left: 5, right: 5),
            height: 70,
            width: 43,
            decoration: BoxDecoration(
                color: cardColorList[index][0],
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  weekdays[index],
                  style: TextStyle(
                      fontSize: 13,
                      color: cardColorList[index][1],
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
