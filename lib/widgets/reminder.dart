import 'package:flutter/material.dart';

class Reminder extends StatefulWidget {
  const Reminder({Key? key}) : super(key: key);

  @override
  _ReminderState createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  final List<String> _time = const ['30', '40', '25', '10', '35'];

  var _selection = '25';
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.only(left: 16),
        child: Text(
          'Remind Me Before',
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
                  onTap: () => setState(() => _selection = time),
                  child: Container(
                    margin: EdgeInsets.only(
                      right: time == '04:00' ? 0 : 10,
                    ),
                    width: 60,
                    decoration: BoxDecoration(
                      color: _selection == time
                          ? theme.primary
                          : theme.primary.withOpacity(0.08),
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          time,
                          style: TextStyle(
                            color: _selection == time
                                ? Colors.white
                                : theme.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Minit',
                          style: TextStyle(
                            color: _selection == time
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
