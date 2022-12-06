import 'package:flutter/material.dart';

class AllRecordsCard extends StatelessWidget {
  const AllRecordsCard({Key? key}) : super(key: key);

  final List<Map> _content = const [
    {'day': '27', 'month': 'FEB'},
    {'day': '28', 'month': 'FEB'},
    {'day': '01', 'month': 'MAR'},
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: _content
            .map(
              (e) => Container(
                height: 110,
                padding: const EdgeInsets.only(top: 11, left: 11, bottom: 11),
                margin: const EdgeInsets.only(bottom: 11),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ],
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Column(children: [
                              Container(
                                  height: 60,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: theme.primary,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          e['day'],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          e['month'],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ])),
                              const Spacer(),
                              Container(
                                height: 22,
                                width: 55,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: theme.primary.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Text(
                                  'NEW',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: theme.primary,
                                  ),
                                ),
                              ),
                            ]),
                            const SizedBox(width: 10),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Records added by you',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'Record for Abdullah mamun',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: theme.primary,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text('1 Prescription',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: const Color(0xff677294),
                                      )),
                                ])
                          ],
                        ),
                      ),
                      const Icon(Icons.more_vert,
                          size: 30, color: Color(0xff677294))
                    ]),
              ),
            )
            .toList(),
      ),
    );
  }
}
