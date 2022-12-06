import 'package:flutter/material.dart';

class AddImage extends StatelessWidget {
  const AddImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            width: 100,
            height: 125,
            decoration: BoxDecoration(
                color: theme.primary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(6)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset('assets/images/patient.png'))),
        const SizedBox(width: 15),
        Container(
            width: 100,
            height: 125,
            decoration: BoxDecoration(
                color: theme.primary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, color: theme.primary, size: 40),
                const SizedBox(height: 10),
                Text(
                  'Add more images',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: theme.primary,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            )),
      ]),
    );
  }
}
