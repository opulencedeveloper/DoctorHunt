import 'package:flutter/material.dart';

import '../screens/auth_screen.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  final List<String> _pictures = [
    'assets/images/trust-doc.png',
    'assets/images/best-doc.png',
    'assets/images/easy-appoint.png'
  ];
  var _index = 0;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return SizedBox(
      width: mediaQuery.width,
      height: mediaQuery.height,
      child: Column(children: [
        const Spacer(),
        CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage:
              AssetImage(_index > 2 ? _pictures[2] : _pictures[_index]),
          radius: 168,
        ),
        const Spacer(),
        Text(
          _index == 0
              ? 'Find Trusted Doctors'
              : _index == 1
                  ? 'Choose Best Doctors'
                  : 'Easy Appointments',
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff677294),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _index++;
            });
            if (_index > 2) {
              Navigator.of(context).pushNamed(AuthScreen.routeName);
            }
          },
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(289, 54),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(
            _index == 0 ? 'Get Started' : 'Next',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 5),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AuthScreen.routeName);
          },
          child: const Text(
            'Skip',
            style: TextStyle(
              color: Color(0xff677294),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 30),
      ]),
    );
  }
}
