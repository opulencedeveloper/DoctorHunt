import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/popular_doctors.dart';
import '../widgets/category.dart';

class PopularDoctorScreen extends StatelessWidget {
  static const routeName = './popular-doc-route';
  const PopularDoctorScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BackGround(
          shadowTop: true,
          widget: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(height: 10),
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
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search, color: Color(0xff677294)))
                ]),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(children: const [
                  Text(
                    'Popular Doctors',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text('See All  ',
                      style: TextStyle(
                        color: Color(0xff677294),
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      )),
                  Icon(Icons.arrow_forward_ios, size: 10)
                ]),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: PopularDoctors(
                  height: 200,
                  width: 136,
                  imageHeight: 131,
                  nameFont: 14,
                  titleFont: 10,
                  spacer: 5,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Category(),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
