import 'package:flutter/material.dart';

import '../screens/doctors_details_screen.dart';
import '../provider/doctors.dart';

class FavoriteSearchResult extends StatelessWidget {
  final List<Doctor> doctors;
  const FavoriteSearchResult({Key? key, required this.doctors})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final mediaQuery = MediaQuery.of(context).size.height;
    return doctors.isEmpty
        ? const SizedBox(height: 20)
        : SizedBox(
            height: mediaQuery * 0.6,
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisExtent: 180, //height
                childAspectRatio: 2 / 1,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: doctors.length,
              itemBuilder: (_, i) => GestureDetector(
                onTap: () => Navigator.of(context).pushNamed(
                    DoctorsDetailsScreen.routeName,
                    arguments: doctors[i].id),
                child: Container(
                  height: 180,
                  width: 160,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Align(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.favorite, color: Colors.red)),
                      CircleAvatar(
                          radius: 42,
                          backgroundImage: AssetImage(doctors[i].image)),
                      const SizedBox(height: 10),
                      Text(
                        doctors[i].name,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        doctors[i].type,
                        style: TextStyle(
                          color: theme.primary,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
