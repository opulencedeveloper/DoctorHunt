import 'package:flutter/material.dart';

class FeaturedDoctors extends StatelessWidget {
  FeaturedDoctors({Key? key}) : super(key: key);
  final List<Map> _doctors = [
    {
      'name': 'Dr. Crick',
      'amount': '25.00',
      'rating': '3.7',
      'image': 'assets/images/doc-crick.png'
    },
    {
      'name': 'Dr. Strain',
      'amount': '22.00',
      'rating': '3.0',
      'image': 'assets/images/doc-strain.png'
    },
    {
      'name': 'Dr. Lachinet',
      'amount': '29.00',
      'rating': '2.9',
      'image': 'assets/images/doc-lach.png',
    },
    {
      'name': 'Dr. Lachinet',
      'amount': '29.00',
      'rating': '2.9',
      'image': 'assets/images/doc-lach.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _doctors.length,
        itemBuilder: (_, i) => Container(
            width: 96,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            margin: const EdgeInsets.only(right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Icon(Icons.favorite_border, size: 12),
                    const Spacer(),
                    const Icon(Icons.star, size: 12, color: Color(0xffF6D060)),
                    Text(
                      ' ${_doctors[i]['rating']}',
                      style: const TextStyle(
                          fontSize: 10, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const Spacer(),
                CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage(_doctors[i]['image'])),
                const Spacer(),
                Text(_doctors[i]['name'],
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500)),
                RichText(
                  text: TextSpan(
                    text: '\$',
                    style: TextStyle(
                        color: theme.primary,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${_doctors[i]['amount']}/hour',
                        style: const TextStyle(
                          color: Color(0xff677294),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
