import 'package:flutter/material.dart';

class DoctorTypes extends StatelessWidget {
  const DoctorTypes({Key? key}) : super(key: key);
  final List<String> _contents = const [
    'All',
    'Dentist',
    'Cardiology',
    'physio Therapy'
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _contents.length,
          itemBuilder: (_, i) => Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: i == 0 ? theme.primary : theme.primary.withOpacity(0.08),
              ),
              child: Text(
                _contents[i],
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: i == 0 ? Colors.white : theme.primary),
              ))),
    );
  }
}
