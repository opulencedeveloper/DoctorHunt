import 'package:flutter/material.dart';

class AvailableTime extends StatefulWidget {
  const AvailableTime({Key? key}) : super(key: key);

  @override
  _AvailableTimeState createState() => _AvailableTimeState();
}

class _AvailableTimeState extends State<AvailableTime> {
  final List<Map> _time = const [
    {'time': '10:00', 'meridiem': 'AM'},
    {'time': '12:00', 'meridiem': 'AM'},
    {'time': '02:00', 'meridiem': 'PM'},
    {'time': '03:00', 'meridiem': 'PM'},
    {'time': '04:00', 'meridiem': 'PM'},
  ];

  var _selection = '02:00';
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.only(left: 16),
        child: Text(
          'Available Time',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      const SizedBox(height: 20),
      SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _time
              .map(
                (time) => GestureDetector(
                  onTap: () => setState(() => _selection = time['time']),
                  child: Container(
                    margin: EdgeInsets.only(
                      right: time['time'] == '04:00' ? 0 : 10,
                    ),
                    width: 60,
                    decoration: BoxDecoration(
                      color: _selection == time['time']
                          ? theme.primary
                          : theme.primary.withOpacity(0.08),
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          time['time'],
                          style: TextStyle(
                            color: _selection == time['time']
                                ? Colors.white
                                : theme.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          time['meridiem'],
                          style: TextStyle(
                            color: _selection == time['time']
                                ? Colors.white
                                : theme.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
      const SizedBox(height: 30),
    ]);
  }
}
