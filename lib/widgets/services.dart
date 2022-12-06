import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);
  final List<Map> _content = const [
    {"num": "1", "content": "Patient care should be the number one priority."},
    {
      "num": "2",
      "content": "If you run your practiceyou know how frustrating."
    },
    {"num": "3", "content": "That's why some of appointment reminder system."},
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 25),
        const Text(
          'Services',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _content
              .map((e) => Container(
                  alignment: Alignment.centerLeft,
                  height: 55,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                        color: e['num'] == '3'
                            ? Colors.transparent
                            : const Color(0xff677294).withOpacity(0.2),
                        width: 1),
                  )),
                  child: RichText(
                    text: TextSpan(
                      text: '${e['num']}. ',
                      style: TextStyle(
                          color: theme.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                      children: <TextSpan>[
                        TextSpan(
                          text: e['content'], //'${_doctors[i]['amount']}/hour',
                          style: const TextStyle(
                            color: Color(0xff677294),
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                  )))
              .toList(),
        )
      ],
    );
  }
}
