import 'package:flutter/material.dart';

import '../widgets/appointment_card.dart';
import '../widgets/appointment_form.dart';
import '../widgets/patient_info.dart';

class AppointmentTab extends StatelessWidget {
  const AppointmentTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Appointment',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: AppointmentCard(),
        ),
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: AppointmentForm(),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: PatientInfo(),
        ),
      ]),
    );
  }
}
