import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/drawer.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  static const routeName = './privacy-policy-route';

  const PrivacyPolicyScreen({Key? key}) : super(key: key);
  final List<String> _content = const [
    'The standard chunk of lorem Ipsum used since\n1500s is reproduced below for those\ninterested. ',
    'Sections 1.10.32 and 1.10.33 from "de\nFinibus Bonorum et Malorum. The point of using.',
    'Lorem Ipsum is that it has a moreIt is a long\nestablished fact that reader will distracted.',
    'Lorem Ipsum is that it has a moreIt is a long\nestablished fact that reader will distracted.',
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
          'Privacy policy',
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
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      'Doctor Hunt Apps Privacy Policy',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff677294),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "\u2022",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    const Text(
                      'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words believable. It is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more ',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff959CB4),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                          height: 265,
                          child: Column(children: [
                            Text(
                              "\u2022",
                              style:
                                  TextStyle(fontSize: 30, color: theme.primary),
                            ),
                            const SizedBox(height: 43),
                            Text(
                              "\u2022",
                              style:
                                  TextStyle(fontSize: 30, color: theme.primary),
                            ),
                            const SizedBox(height: 18),
                            Text(
                              "\u2022",
                              style:
                                  TextStyle(fontSize: 30, color: theme.primary),
                            ),
                            const SizedBox(height: 23),
                            Text(
                              "\u2022",
                              style:
                                  TextStyle(fontSize: 30, color: theme.primary),
                            ),
                          ])),
                      const SizedBox(width: 5),
                      Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: _content
                              .map((e) => Column(children: [
                                    Text(
                                      e,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        height: 1.5,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff959CB4),
                                      ),
                                    ),
                                    const SizedBox(height: 15)
                                  ]))
                              .toList()),
                    ]),
                    const Text(
                      'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words believable. It is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more ',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff959CB4),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
