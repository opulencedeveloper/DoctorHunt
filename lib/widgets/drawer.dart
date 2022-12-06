import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/doctors.dart';
import '../screens/medical_records_screen.dart';
import '../screens/tabs_screen.dart';
import '../screens/medicine_orders_screen.dart';
import '../screens/help_center_screen.dart';
import '../screens/diagonstics_tests_screen.dart';
import '../screens/patient_details_screen.dart';
import '../screens/privacy_policy_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/auth_screen.dart';
import '../screens/profile_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  void _showErrorDialog(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                title: const Text('Log Out',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff677294))),
                content: const Text('Are you sure you want to logout?',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff677294))),
                actions: [
                  TextButton(
                      child: Text("Cancel",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: theme.primary)),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      }),
                  TextButton(
                      child: Text("Ok",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: theme.primary)),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(AuthScreen.routeName);
                      })
                ]));
  }

  Widget buildListTile(IconData icon, String title, VoidCallback tapHandler,
      BuildContext context) {
    return SizedBox(
        width: 250,
        height: 61,
        child: ListTile(
          leading: Icon(icon, color: Colors.white),
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
          onTap: tapHandler,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff6A7A9C),
              Color(0xff546285),
            ],
          ),
        ),
        child: RawScrollbar(
            thumbColor: Colors.white,
            thickness: 5,
            isAlwaysShown: true,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(ProfileScreen.routeName);
                    },
                    leading: const CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage('assets/images/patient.png'),
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        'Amobi Victor',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    subtitle: Row(children: const [
                      Icon(
                        Icons.phone,
                        size: 15,
                        color: Colors.white,
                      ),
                      Text(
                        ' +2348184297165',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ]),
                    trailing: GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.red,
                            child: Icon(Icons.close))),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  buildListTile(Icons.person, 'My Doctors', () {
                    Provider.of<Doctors>(context, listen: false)
                        .setScreenState(true, 'My Doctors');
                    Navigator.of(context)
                        .pushReplacementNamed(TabsScreen.routeName);
                  }, context),
                  buildListTile(Icons.paste_outlined, 'Medical Records', () {
                    Navigator.of(context)
                        .pushReplacementNamed(MedicalRecordsScreen.routeName);
                  }, context),
                  buildListTile(Icons.credit_card, 'Payments', () {
                    Navigator.of(context)
                        .pushReplacementNamed(PatientDetailsScreen.routeName);
                  }, context),
                  buildListTile(Icons.medication_rounded, 'Medicine Orders',
                      () {
                    Navigator.of(context)
                        .pushReplacementNamed(MedicineOrdersScreen.routeName);
                  }, context),
                  buildListTile(Icons.calendar_month_rounded, 'Test Bookings',
                      () {
                    Navigator.of(context)
                        .pushReplacementNamed(DiagonsticsTestsScreen.routeName);
                  }, context),
                  buildListTile(Icons.perm_device_info, 'Privacy & Policy', () {
                    Navigator.of(context)
                        .pushReplacementNamed(PrivacyPolicyScreen.routeName);
                  }, context),
                  buildListTile(Icons.help_outline, 'Help Center', () {
                    Navigator.of(context)
                        .pushReplacementNamed(HelpCenterScreen.routeName);
                  }, context),
                  buildListTile(Icons.settings_rounded, 'Settings', () {
                    Navigator.of(context)
                        .pushReplacementNamed(SettingsScreen.routeName);
                  }, context),
                  const SizedBox(height: 30),
                  buildListTile(Icons.logout, 'Logout',
                      () => _showErrorDialog(context), context),
                ],
              ),
            )),
      ),
    );
  }
}
