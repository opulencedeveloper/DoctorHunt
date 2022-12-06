import 'package:flutter/material.dart';

class AvailableSlot extends StatefulWidget {
  final List<String> time;
  final bool section;
  const AvailableSlot({
    required this.time,
    required this.section,
    Key? key,
  }) : super(key: key);
  @override
  _AvailableSlotState createState() => _AvailableSlotState();
}

class _AvailableSlotState extends State<AvailableSlot> {
  var timeColorAfterNoon = '2:00 PM';
  var timeColorEvening = '5:30 PM';
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return SizedBox(
        width: double.infinity,
        child: Wrap(
          runSpacing: 10,
          spacing: 8,
          children: widget.time
              .map(
                (noonSlot) => GestureDetector(
                  onTap: () {
                    setState(
                      () => widget.section
                          ? timeColorAfterNoon = noonSlot
                          : timeColorEvening = noonSlot,
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: timeColorAfterNoon == noonSlot ||
                              timeColorEvening == noonSlot
                          ? theme.primary
                          : theme.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    //margin: const EdgeInsets.only(right: 2, bottom: 10),
                    alignment: Alignment.center,
                    width: 76,
                    height: 40,
                    child: Text(noonSlot,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: timeColorAfterNoon == noonSlot ||
                                    timeColorEvening == noonSlot
                                ? Colors.white
                                : theme.primary)),
                  ),
                ),
              )
              .toList(),
        ));
  }
}
