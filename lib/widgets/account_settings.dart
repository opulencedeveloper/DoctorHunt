import 'package:flutter/material.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({Key? key}) : super(key: key);
  final List<Map> _content = const [
    {
      'color': Color(0xffEB5757),
      'icon': Icons.lock,
      'title': 'Change Password',
    },
    {
      'color': Color(0xff219653),
      'icon': Icons.notifications,
      'title': 'Notifications',
    },
    {
      'color': Color(0xff56CCF2),
      'icon': Icons.stacked_line_chart_outlined,
      'title': 'Statistics',
    },
    {
      'color': Color(0xffF2994A),
      'icon': Icons.group,
      'title': 'About us',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(height: 10),
      const Text(
        'Account settings',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xff677294),
        ),
      ),
      const SizedBox(height: 5),
      Column(
          children: _content
              .map((e) => Column(children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        radius: 16,
                        backgroundColor: e['color'],
                        child: Icon(e['icon'], color: Colors.white, size: 17),
                      ),
                      title: Text(
                        e['title'],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff677294),
                        ),
                      ),
                      trailing: const Icon(Icons.keyboard_arrow_right),
                    ),
                    Divider(
                        color: const Color(0xff677294).withOpacity(0.2),
                        thickness: 1)
                  ]))
              .toList())
    ]);
  }
}
