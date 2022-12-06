import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ProfileTop extends StatelessWidget {
  const ProfileTop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Container(
      height: 357,
      padding: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: theme.primary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Set up your profile',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const Text(
              'Update your profile to connect your doctor with better impression.',
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.7,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 130,
              width: 130,
              child: Badge(
                animationType: BadgeAnimationType.fade,
                padding: const EdgeInsets.all(4),
                //toAnimate: false,
                badgeContent: CircleAvatar(
                    radius: 18,
                    backgroundColor: const Color(0xff677294).withOpacity(0.5),
                    child: const Icon(Icons.camera_alt_rounded,
                        color: Colors.white)),
                badgeColor: const Color(0xff677294).withOpacity(0.5),
                position: BadgePosition.bottomEnd(bottom: 15, end: -7),
                child: const CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage('assets/images/patient.png'),
                ),
              ),
            )
          ]),
    );
  }
}
