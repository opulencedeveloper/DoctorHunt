import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
  const Recommend({Key? key}) : super(key: key);
  final List<Map> _content = const [
    {
      'title': 'Advanced Young Indian Health Checkup',
      'tests': '69 tests included',
      'amount1': '358',
      'amount2': '330',
      'image': 'assets/images/d1.png'
    },
    {
      'title': 'Working Women\'s Health Checkup',
      'tests': '119 tests included',
      'amount1': '387',
      'amount2': '345',
      'image': 'assets/images/d2.png'
    },
    {
      'title': 'Active Professional Health Checkup',
      'tests': '100 tests included',
      'amount1': '457',
      'amount2': '411',
      'image': 'assets/images/d3.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Recommend for you',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 15),
        Column(
            children: _content
                .map((e) => Container(
                    height: 427,
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                          color: Colors.grey.withOpacity(0.3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 16, left: 14, right: 14),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e['title'],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 7),
                                  const Text(
                                    'Ideal for individuals aged 21-40 years',
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff677294)),
                                  ),
                                  const SizedBox(height: 17),
                                  Container(
                                    height: 32,
                                    width: 130,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                          color: theme.primary,
                                          //width: 1,
                                        )),
                                    child: Text(
                                      e['tests'],
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: theme.primary),
                                    ),
                                  )
                                ])),
                        const SizedBox(height: 17),
                        Container(
                            height: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(
                                  e['image'],
                                  fit: BoxFit.cover,
                                ))),
                        const SizedBox(height: 10),
                        ListTile(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16),
                          title: RichText(
                            text: TextSpan(
                              text: '\$ ${e['amount1']}',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '  \$ ${e['amount2']}',
                                  style: const TextStyle(
                                    color: Color(0xff677294),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: ' 35% off',
                                  style: TextStyle(
                                    color: theme.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const TextSpan(
                                  text: '\n+10% Health cashback T&C',
                                  style: TextStyle(
                                    color: Color(0xff677294),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          trailing: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(110, 32),
                                elevation: 0,
                              ),
                              child: const Text(
                                'Book Now', //'${_doctors[i]['amount']}/hour',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                        )
                      ],
                    )))
                .toList())
      ],
    );
  }
}
