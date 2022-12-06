import 'package:flutter/material.dart';

class DiagonisticsTestBook extends StatelessWidget {
  final VoidCallback switcher;
  const DiagonisticsTestBook({Key? key, required this.switcher})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Column(children: [
      const SizedBox(height: 50),
      CircleAvatar(
          child: Icon(Icons.feed, color: theme.primary, size: 120),
          radius: 107,
          backgroundColor: const Color(0xffC6EFE5)),
      const SizedBox(height: 40),
      const Text(
        'You haven\'t booked any tests yet',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 5),
      const Text(
        'Get started with your first health checkup',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xff677294),
        ),
      ),
      const SizedBox(height: 40),
      Container(
        height: 40,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          onPressed: switcher,
          child: const Text(
            'Book Now',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      const SizedBox(height: 40),
    ]);
  }
}
