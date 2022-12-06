import 'package:flutter/material.dart';

class MoreOptions extends StatefulWidget {
  const MoreOptions({Key? key}) : super(key: key);

  @override
  _MoreOptionsState createState() => _MoreOptionsState();
}

class _MoreOptionsState extends State<MoreOptions> {
  bool isSwitched = false;
  final List<Map> _content = [
    {
      'key': 'button',
      'title': 'Text messages',
      'value': false,
    },
    {
      'key': 'button',
      'title': 'Phone calls',
      'value': false,
    },
    {
      'key': 'text',
      'title': 'Languages',
      'title2': 'English',
    },
    {
      'key': 'text',
      'title': 'Currency',
      'title2': '\$-USD',
    },
    {
      'key': 'text',
      'title': 'Linked accounts',
      'title2': 'Facebook, Google',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(height: 30),
      const Text(
        'More options',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xff677294),
        ),
      ),
      const SizedBox(height: 5),
      Column(
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
                  child: Row(children: [
                    Text(
                      e['title'],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff677294),
                      ),
                    ),
                    const Spacer(),
                    if (e['key'] == 'button')
                      Switch.adaptive(
                        value: e['value'],
                        onChanged: (value) {
                          setState(() {
                            e['value'] = value;
                            print(isSwitched);
                          });
                        },
                        activeTrackColor: theme.primary.withOpacity(0.5),
                        activeColor: theme.primary,
                      ),
                    if (e['key'] == 'text')
                      Row(children: [
                        Text(
                          '${e['title2']}',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff677294),
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_right,
                            color: Color(0xff677294))
                      ])
                  ])))
              .toList())
    ]);
  }
}
