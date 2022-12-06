import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/drawer.dart';

class HelpCenterScreen extends StatelessWidget {
  static const routeName = './help-center-route';

  const HelpCenterScreen({Key? key}) : super(key: key);

  final List<String> _content = const [
    'Booking a new Appointment',
    'Existing Appointment',
    'Online consultations',
    'Feedbacks',
    'Medicine orders',
    'Diagnostic Tests',
    'Health plans',
    'My account and Practo Drive',
    'Have a feature in mind',
    'Other issues',
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: theme.primary),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Help center',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: BackGround(
          shadowTop: true,
          widget: SingleChildScrollView(
            primary: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      height: 54,
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5.0,
                              color: Colors.grey.withOpacity(0.3),
                            ),
                          ]),
                      child: Text(
                        'I have an issue with',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: theme.primary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                        children: _content
                            .map((content) => ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: Text(
                                    content,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  trailing:
                                      const Icon(Icons.keyboard_arrow_right),
                                ))
                            .toList())
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
