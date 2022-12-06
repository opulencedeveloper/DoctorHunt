import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/drawer.dart';
import '../widgets/diagonistics_test_book.dart';
import '../widgets/diagonistics_screen_content.dart';

class DiagonsticsTestsScreen extends StatefulWidget {
  static const routeName = './diagonstics-test-route';
  const DiagonsticsTestsScreen({Key? key}) : super(key: key);

  @override
  _DiagonsticsTestsScreenState createState() => _DiagonsticsTestsScreenState();
}

class _DiagonsticsTestsScreenState extends State<DiagonsticsTestsScreen> {
  var _screenState = true;

  void _screenSwicher() {
    setState(() => _screenState = false);
  }

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
          'Diagonstics Tests',
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
              child: Column(children: [
                if (_screenState)
                  DiagonisticsTestBook(switcher: _screenSwicher),
                if (!_screenState) const DiagonisticsScreenContent()
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
