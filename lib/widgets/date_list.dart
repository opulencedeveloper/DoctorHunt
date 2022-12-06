import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateList extends StatefulWidget {
  const DateList({Key? key}) : super(key: key);

  @override
  _DateListState createState() => _DateListState();
}

class _DateListState extends State<DateList> {
  var _selectedColorIndex = 1;
  final currDt = DateTime.now();
  final List<DateTime> _days = [];
  void getDaysInBeteween() {
    var _startD = DateTime(currDt.year, currDt.month, currDt.day - 1);
//currDt.day+24 gets only 14 days, since datetime print the range between two dates, Eg. DateTime(2020) to DateTime(2021), only prints from 2020 1st month to 2020 last month
    final _endD = DateTime(currDt.year, currDt.month, currDt.day + 24);
    for (int i = 0; i <= _endD.difference(_startD).inDays; i++) {
      final dates = DateTime(
          _startD.year,
          int.parse(_startD.month.toString().padLeft(2, '0')),
          int.parse(_startD.day.toString().padLeft(2, '0')));
      _days.add(dates);
//final fromDateString =     '${_startD.year}-${_startD.month.toString().padLeft(2, '0')}-${_startD.day.toString().padLeft(2, '0')}';

      // update the dates for the next loop
      _startD = _startD.add(const Duration(days: 1));
    }
    //print(_days);
    //return days;
  }

  int cou = 1;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    getDaysInBeteween();
    return Column(children: [
      Container(
        padding: const EdgeInsets.only(left: 16),
        height: 54,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _days.length,
          itemBuilder: (_, i) => GestureDetector(
            onTap: () {
              setState(() => _selectedColorIndex = i);
            },
            child: Container(
              width: 150,
              margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: _selectedColorIndex == i
                      ? theme.primary
                      : Colors.transparent,
                  border: Border.all(
                    color: _selectedColorIndex == i
                        ? Colors.transparent
                        : const Color(0xff677294).withOpacity(0.5),
                    //width: 5,
                  )),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        _days[i].day == currDt.day
                            ? 'Today'
                            : DateTime(_days[i].year, _days[i].month,
                                        _days[i].day)
                                    .isBefore(DateTime(
                                        currDt.year, currDt.month, currDt.day))
                                ? 'Yesterday'
                                : DateFormat('E, d MMM').format(_days[i]),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: _selectedColorIndex == i
                              ? Colors.white
                              : Colors.black,
                        )),
                    Text(
                        i == 0
                            ? 'No slots available'
                            : i == 1
                                ? '9 slots available'
                                : '10 slots available',
                        style: TextStyle(
                          color: _selectedColorIndex == i
                              ? Colors.white
                              : const Color(0xff677294),
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ))
                  ]),
            ),
          ),
        ),
      ),
      const SizedBox(height: 20),
      Text('Today ${DateFormat('d MMM').format(DateTime.now())}',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          )),
    ]);
  }
}

//DateFormat.MMMEd().format(_days[i])
