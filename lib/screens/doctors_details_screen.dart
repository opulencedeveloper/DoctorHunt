import 'package:flutter/material.dart';

import '../widgets/doctor_details_card.dart';
import '../widgets/background.dart';
import '../widgets/no_of_patient.dart';
import '../widgets/services.dart';

class DoctorsDetailsScreen extends StatefulWidget {
  static const routeName = './doctors-details-route';
  const DoctorsDetailsScreen({Key? key}) : super(key: key);

  @override
  _DoctorsDetailsScreenState createState() => _DoctorsDetailsScreenState();
}

class _DoctorsDetailsScreenState extends State<DoctorsDetailsScreen> {
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(children: [
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
                      'Doctors Details',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ]),
                  const SizedBox(height: 30),
                  DoctorsDetailsCard(id: _doctorId.toString()),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: NoOfPatient(),
                  ),
                  const Services(),
                  const SizedBox(height: 20),
                  Container(
                    height: 190.06,
                    width: double.infinity,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/map.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
