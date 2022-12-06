import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/all_records_card.dart';

class AllRecordsScreen extends StatelessWidget {
  static const routeName = './all-record-route';
  const AllRecordsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 48,
          leadingWidth: 48,
          title: const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'All Records',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )),
          leading: Container(
            height: 30,
            width: 30,
            margin: const EdgeInsets.only(left: 16, top: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              padding: const EdgeInsets.only(left: 7),
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 13,
                color: Color(0xff677294),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: BackGround(
            shadowTop: true,
            widget: SingleChildScrollView(
              child: (Column(children: [
                const SizedBox(height: 20),
                const AllRecordsCard(),
              ])),
            ),
          ),
        ));
  }
}
