import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../widgets/background.dart';
import '../widgets/appointment_calender.dart';
import '../widgets/available_time.dart';
import '../widgets/reminder.dart';
import '../screens/tabs_screen.dart';

class AppointmentCalenderScreen extends StatelessWidget {
  static const routeName = './calender-route';

  const AppointmentCalenderScreen({Key? key}) : super(key: key);

  void _showSuccessDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              insetPadding: const EdgeInsets.symmetric(horizontal: 16),
              //contentPadding: EdgeInsets.zero,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              content: SizedBox(
                height: 520,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 78,
                        backgroundColor: const Color(0xffE7F8F2),
                        child: Icon(Icons.thumb_up,
                            size: 70,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      const Text(
                        'Thank You!',
                        style: TextStyle(
                            fontSize: 38, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        'Your Appointment Successful',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff677294),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'You booked an appointment with Dr. Pediatrician Purpieson on ${DateFormat('MMMM dd').format(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day))}, at 02:00 PM',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Color(0xff677294),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                          height: 54,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(elevation: 0),
                            onPressed: () {
                              // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MyHomeScreen()), (Route<dynamic> route) => route.isFirst);
                              Navigator.of(context)
                                  .pushNamed(TabsScreen.routeName);
                            },
                            child: const Text(
                              'Done',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          )),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0),
                          onPressed: () => Navigator.of(ctx).pop(),
                          child: const Text(
                            'Edit your appointment',
                            style: TextStyle(
                                color: Color(0xff677294),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ]),
              ),
            ));
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
                    'Appointment',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ]),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: AppointmentCalender(),
              ),
              const SizedBox(height: 30),
              Container(
                height: 409,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const AvailableTime(),
                      const Reminder(),
                      Container(
                          height: 54,
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(elevation: 0),
                            onPressed: () => _showSuccessDialog(context),
                            child: const Text(
                              'Confirm',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          )),
                    ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
