import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/drawer.dart';
import '../widgets/account_settings.dart';
import '../widgets/more_options.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = './settings-route';

  const SettingsScreen({Key? key}) : super(key: key);

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
          'Settings',
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
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    AccountSettings(),
                    MoreOptions(),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
