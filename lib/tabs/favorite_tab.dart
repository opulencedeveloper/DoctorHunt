import 'package:flutter/material.dart';

import '../widgets/favorite_search.dart';
import '../widgets/featured_doctors.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(children: const [
              Text(
                'Favorite Doctors',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ]),
          ),
          const SizedBox(height: 25),
          const FavoriteSearch(),
          const SizedBox(height: 25),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GestureDetector(
                onTap: () {},
                child: Row(children: const [
                  Text(
                    'Featured Doctor',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text('See all',
                      style: TextStyle(
                        color: Color(0xff677294),
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      )),
                  Icon(Icons.arrow_forward_ios, size: 10)
                ]),
              )),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: FeaturedDoctors(),
          ),
          const SizedBox(height: kBottomNavigationBarHeight),
        ],
      ),
    );
  }
}
