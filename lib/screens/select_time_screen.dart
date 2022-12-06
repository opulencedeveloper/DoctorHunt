import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/doctor_card.dart';
import '../widgets/date_list.dart';
import '../widgets/next_available.dart';

class SelectTimeScreen extends StatefulWidget {
  static const routeName = './selectTimeRoute';
  const SelectTimeScreen({Key? key}) : super(key: key);

  @override
  _SelectTimeScreenState createState() => _SelectTimeScreenState();
}

class _SelectTimeScreenState extends State<SelectTimeScreen> {
  var _loadedInitData = false;
  String? _doctorId;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_loadedInitData) {
      _doctorId = ModalRoute.of(context)?.settings.arguments.toString();
      // print(_id);
    }
    _loadedInitData = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BackGround(
          shadowTop: true,
          widget: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(children: [
                  Container(
                    height: 30,
                    width: 30,
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
                  const SizedBox(width: 20),
                  const Text(
                    'Select Time',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )
                ]),
              ),
              const SizedBox(height: 30),
              DoctorCard(id: _doctorId.toString()),
              const SizedBox(height: 20),
              const DateList(),
              const SizedBox(height: 20),
              const NextAvailable()
            ]),
          ),
        ),
      ),
    );
  }
}
