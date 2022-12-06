import 'package:flutter/material.dart';

import '../screens/all_records_screen.dart';

class Record extends StatelessWidget {
  const Record({Key? key}) : super(key: key);
  final List<Map> _icon = const [
    {
      'text': 'Report',
      'icon': Icons.paste,
    },
    {
      'text': 'Prescription',
      'icon': Icons.file_open_rounded,
    },
    {
      'text': 'Invoice',
      'icon': Icons.file_present_rounded,
    },
  ];

  Widget _myTile(String title, String subtitle, BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: theme.primary,
        ),
      ),
      trailing: const Icon(Icons.edit),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Container(
        height: 453,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 25,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
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
            _myTile('Record for', 'Amobi Victor', context),
            const SizedBox(height: 10),
            Divider(
              thickness: 1,
              color: const Color(0xffC4C4C4).withOpacity(0.3),
            ),
            const SizedBox(height: 10),
            const Text(
              'Type of record',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 15),
            Row(
                children: _icon
                    .map((e) => Row(children: [
                          Column(
                            children: [
                              Icon(
                                e['icon'],
                                color: e['text'] == 'Prescription'
                                    ? theme.primary
                                    : const Color(0xff677294),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                e['text'],
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: e['text'] == 'Prescription'
                                      ? theme.primary
                                      : const Color(0xff677294),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 30)
                        ]))
                    .toList()),
            const SizedBox(height: 10),
            Divider(
              thickness: 1,
              color: const Color(0xffC4C4C4).withOpacity(0.3),
            ),
            const SizedBox(height: 10),
            _myTile('Record created on', '27 Feb, 2021', context),
            const SizedBox(height: 10),
            Divider(
              thickness: 1,
              color: const Color(0xffC4C4C4).withOpacity(0.3),
            ),
            const SizedBox(height: 18),
            Container(
              height: 54,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () =>
                    Navigator.of(context).pushNamed(AllRecordsScreen.routeName),
                child: const Text(
                  'Upload record',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ));
  }
}
