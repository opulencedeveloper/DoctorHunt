import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './available_slots.dart';

class NextAvailable extends StatefulWidget {
  const NextAvailable({Key? key}) : super(key: key);

  @override
  _NextAvailableState createState() => _NextAvailableState();
}

class _NextAvailableState extends State<NextAvailable> {
  final currDt = DateTime.now();
  bool _switcher = true;
  final List<String> _afternoonSlot = [
    '1:30 PM',
    '1:00 PM',
    '2:00 PM',
    '2:30 PM',
    '3:30 PM',
    '4:00 PM',
  ];

  final List<String> _eveningSlot = [
    '5:00 PM',
    '5:30 PM',
    '6:00 PM',
    '6:30 PM',
    '7:00 PM',
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        if (_switcher)
          const Text(
            'No slots available',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff677294),
            ),
          ),
        if (_switcher) const SizedBox(height: 14),
        if (_switcher)
          SizedBox(
              height: 54,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() => _switcher = false);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Next availability on ${DateFormat('E, d MMM').format(DateTime(currDt.year, currDt.month, currDt.day + 1))}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ))),
        if (!_switcher)
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Afternoon 7 slots',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        if (!_switcher) const SizedBox(height: 12),
        if (!_switcher) AvailableSlot(time: _afternoonSlot, section: true),
        if (!_switcher) const SizedBox(height: 12),
        if (!_switcher)
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Evening 5 slots',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        if (!_switcher) const SizedBox(height: 12),
        if (!_switcher) AvailableSlot(time: _eveningSlot, section: false),
        if (_switcher) const SizedBox(height: 20),
        if (_switcher)
          const Text(
            'OR',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff677294)),
          ),
        if (_switcher) const SizedBox(height: 20),
        if (_switcher)
          SizedBox(
              height: 54,
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    setState(() => _switcher = false);
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    side: BorderSide(
                      color: theme.primary,
                    ),
                  ),
                  child: Text(
                    'Contact Clinic',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: theme.primary,
                    ),
                  ))),
      ]),
    );
  }
}
