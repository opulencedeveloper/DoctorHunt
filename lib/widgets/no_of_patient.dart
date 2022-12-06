import 'package:flutter/material.dart';

class NoOfPatient extends StatelessWidget {
  const NoOfPatient({Key? key}) : super(key: key);

  final List<Map> _patientNo = const [
    {"num": "100", "type": "Running"},
    {"num": "500", "type": "Ongoing"},
    {"num": "700", "type": "Patient"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 84,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _patientNo
              .map((e) => Container(
                    height: 64,
                    width: 90,
                    decoration: BoxDecoration(
                      color: const Color(0xffCBCBCB).withOpacity(0.12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            e['num'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            e['type'],
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff677294),
                            ),
                          ),
                        ]),
                  ))
              .toList(),
        ));
  }
}
