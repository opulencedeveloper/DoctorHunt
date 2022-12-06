import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  final VoidCallback switcher;
  const Cart({Key? key, required this.switcher}) : super(key: key);
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
        'Your cart is empty',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 40),
      Container(
        height: 54,
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
            'Add Tests',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      const SizedBox(height: 40),
    ]);
  }
}
