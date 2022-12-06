import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/background.dart';
import '../widgets/get_started.dart';

class GetStartedScreen extends StatefulWidget {
static const routeName = './getstarted-route';
  const GetStartedScreen({
    Key? key,
  }) : super(key: key);
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: BackGround(
        align: 'left',
        widget: GetStarted(),
      )),
    );
  }
}
