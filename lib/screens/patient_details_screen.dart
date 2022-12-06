import 'package:flutter/material.dart';

import '../screens/tabs_screen.dart';

import '../widgets/background.dart';
import '../widgets/drawer.dart';
import '../widgets/cart.dart';
import '../widgets/patient_details.dart';

class PatientDetailsScreen extends StatefulWidget {
  static const routeName = './patient-details-route';
  const PatientDetailsScreen({Key? key}) : super(key: key);

  @override
  _PatientDetailsScreenState createState() => _PatientDetailsScreenState();
}

class _PatientDetailsScreenState extends State<PatientDetailsScreen> {
  var _screenState = true;

  void _screenSwicher() {
    setState(() => _screenState = false);
  }

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
          'Patient Details',
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(children: [
                if (_screenState) Cart(switcher: _screenSwicher),
                if (!_screenState) const PatientDetails(),
                if (!_screenState) const SizedBox(height: 20),
                if (!_screenState)
                  Container(
                    height: 54,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            TabsScreen.routeName,
                            (Route<dynamic> route) => route.isFirst);
                        // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => TabsScreen()), (Route<dynamic> route) => route.isFirst);
                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
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
