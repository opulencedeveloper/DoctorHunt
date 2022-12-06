import 'package:flutter/material.dart';

import '../screens/appointment_calender_screen.dart';

class PatientInfo extends StatelessWidget {
  const PatientInfo({Key? key}) : super(key: key);

  final List<Map> _patientInfo = const [
    {'image': 'assets/images/patient.png', 'info': 'My Self'},
    {'image': 'assets/images/child.png', 'info': 'My Child'},
    {'image': 'assets/images/child.png', 'info': 'My Child'},
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        const Text(
          'Who is this patient?',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 20),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              width: 100,
              height: 125,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: theme.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(6)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add, color: theme.primary, size: 40),
                  const SizedBox(height: 10),
                  Text(
                    'Add',
                    style: TextStyle(
                        color: theme.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )),
          Expanded(
            child: SizedBox(
              height: 155,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _patientInfo.length,
                itemBuilder: (_, i) => Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 100,
                          height: 125,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: theme.primary.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(6)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.asset(_patientInfo[i]['image']))),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 5, bottom: 5, right: 10),
                        child: Text(
                          _patientInfo[i]['info'],
                          style: const TextStyle(
                              color: Color(0xff677294),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ]),
        const SizedBox(height: 10),
        Container(
            height: 54,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 0),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(AppointmentCalenderScreen.routeName);
              },
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            )),
        const SizedBox(height: kBottomNavigationBarHeight),
      ],
    );
  }
}
