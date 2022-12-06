import 'package:flutter/material.dart';

import './medicine_orders_search_screen.dart';

import '../widgets/background.dart';
import '../widgets/drawer.dart';

class MedicineOrdersScreen extends StatefulWidget {
  static const routeName = './medical-orders-route';

  const MedicineOrdersScreen({Key? key}) : super(key: key);

  @override
  _MedicineOrdersScreenState createState() => _MedicineOrdersScreenState();
}

class _MedicineOrdersScreenState extends State<MedicineOrdersScreen> {
  var section = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: theme.primary),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          section == 0 ? 'Medical Orders' : 'Enable Location Services',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: BackGround(
          shadowTop: true,
          widget: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                  child: Icon(
                      section == 0
                          ? Icons.calendar_month_rounded
                          : Icons.location_on,
                      color: theme.primary,
                      size: 120),
                  radius: 107,
                  backgroundColor: const Color(0xffC6EFE5)),
              const SizedBox(height: 40),
              Text(
                section == 0 ? 'No orders placed yet' : 'Location',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                section == 0
                    ? 'Place your first order now.'
                    : 'Your location services are switched off. Please enable location, to help us serve better.',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff677294),
                ),
              ),
              const SizedBox(height: 35),
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
                    setState(() => section++);
                    if (section > 1) {
                      Navigator.of(context)
                          .pushNamed(MedicineOrdersSearchScreen.routeName);
                    }
                  },
                  child: Text(
                    section == 0 ? 'Order medicines.' : 'Enable Location',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ]),
          ),
        ),
      ),
    );
  }
}
