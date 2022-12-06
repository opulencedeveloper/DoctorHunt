import 'package:flutter/material.dart';

import '../widgets/top_bar.dart';
import '../widgets/live_doctors.dart';
import '../widgets/popular_doctors.dart';
import '../widgets/featured_doctors.dart';
import '../widgets/drawer.dart';

import '../screens/popular_doctor_screen.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  Widget _doctorSection({required String type, String buttonText = 'See All'}) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () {
          if (type == 'Popular Doctors') {
            Navigator.of(context).pushNamed(PopularDoctorScreen.routeName);
          }
        },
        child: Row(children: [
          Text(
            type,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          if (type != 'Live Doctors')
            Text(buttonText,
                style: const TextStyle(
                  color: Color(0xff677294),
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                )),
          if (type != 'Live Doctors')
            const Icon(Icons.arrow_forward_ios, size: 10)
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  theme.colorScheme.primary,
                  theme.primaryColor,
                ],
              ),
            ),
          ),
          elevation: 0),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        primary: false,
        child: Column(children: [
          const TopBar(),
          const SizedBox(height: 50, 
                         width:1
                        ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _doctorSection(type: 'Live Doctors'),
                const SizedBox(height: 18),
                LiveDoctors(),
                const SizedBox(height: 20),
                _doctorSection(type: 'Popular Doctors'),
                const SizedBox(height: 18),
                PopularDoctors(
                  height: 264,
                  width: 190,
                  imageHeight: 180,
                  nameFont: 18,
                  titleFont: 12,
                  spacer: 10,
                ),
                const SizedBox(height: 40),
                _doctorSection(type: 'Featured Doctors'),
                const SizedBox(height: 18),
                FeaturedDoctors(),
                const SizedBox(height: kBottomNavigationBarHeight),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
