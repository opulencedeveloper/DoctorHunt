import 'package:flutter/material.dart';

import '../screens/video_call_screen.dart';

class LiveDoctors extends StatelessWidget {
  LiveDoctors({Key? key}) : super(key: key);
  final List<String> _pictures = [
    'assets/images/doc1.png',
    'assets/images/doc2.png',
    'assets/images/doc3.png'
  ];
  final List<String> _icon = [
    'assets/images/tooth-icon.png',
    'assets/images/eye-icon.png',
    'assets/images/tooth-icon.png',
    'assets/images/eye-icon.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 168,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _pictures.length,
          itemBuilder: (_, i) => GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(VideoCallScreen.routeName,
                  arguments: _pictures[i]);
            },
            child: Row(children: [
              Stack(alignment: Alignment.center, children: [
                SizedBox(
                  width: 116.48,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(
                      _pictures[i],
                      fit: BoxFit.cover,
                      color: Colors.black.withOpacity(0.25),
                      colorBlendMode: BlendMode.softLight,
                    ),
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                        width: 40.32,
                        height: 17.92,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 3.5,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'LIVE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 7,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ))),
                const Icon(
                  Icons.play_circle_outline_rounded,
                  size: 30,
                  color: Colors.white,
                )
              ]),
              const SizedBox(
                width: 13,
              )
            ]),
          ),
        ),
      ),
      const SizedBox(height: 20),
      SizedBox(
        height: 90,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _icon.length,
          itemBuilder: (context, i) => Container(
              width: 80,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(6),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    i == 0
                        ? const Color(0xff0EBE7E)
                        : i == 1
                            ? const Color(0xff0EBE7E)
                            : i == 2
                                ? const Color(0xffFE7F44)
                                : const Color(0xffFF484C),
                    i == 0
                        ? const Color(0xff07D9AD)
                        : i == 1
                            ? const Color(0xff07D9AD)
                            : i == 2
                                ? const Color(0xffFFCF68)
                                : const Color(0xffFF6C60),
                  ],
                ),
              ),
              child: Image.asset(_icon[i])),
        ),
      ),
    ]);
  }
}
