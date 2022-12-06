import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Container(
        height: 123,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                Row(children: [
                  Container(
                      height: 87,
                      width: 92,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(4)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            'assets/images/doc-crown.png',
                            fit: BoxFit.cover,
                          ))),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Dr. Pediatrician',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Specialist Cardiologist',
                            style: TextStyle(
                              //color: theme.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(children: [
                            SizedBox(
                              height: 20,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (_, i) => Icon(
                                  Icons.star,
                                  size: 16,
                                  color: i == 4
                                      ? Colors.grey
                                      : const Color(0xffF6D060),
                                ),
                              ),
                            ),
                            const Spacer(),
                            RichText(
                              text: TextSpan(
                                text: '\$ ',
                                style: TextStyle(
                                    color: theme.primary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: '28.00/hr',
                                    style: const TextStyle(
                                      color: Color(0xff677294),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ])
                        ]),
                  ),
                ]),
              ]),
            ]));
  }
}
