import 'package:flutter/material.dart';

class PopularDoctors extends StatelessWidget {
  final double height;
  final double width;
  final double imageHeight;
  final double nameFont;
  final double titleFont;
  final double spacer;
  PopularDoctors({
    required this.height,
    required this.width,
    required this.imageHeight,
    required this.nameFont,
    required this.titleFont,
    required this.spacer,
    Key? key,
  }) : super(key: key);
  final List<Map> _doctors = [
    {
      'name': 'Dr. Fillerup Grab',
      'type': 'Medicine Specialist',
      'image': 'assets/images/doc-filler.png'
    },
    {
      'name': 'Dr. Blessing',
      'type': 'Medicine Specialist',
      'image': 'assets/images/doc-blessing.png'
    },
    {
      'name': 'Dr. Blessing',
      'type': 'Medicine Specialist',
      'image': 'assets/images/doc-blessing.png'
    },
    {
      'name': 'Dr. Blessing',
      'type': 'Medicine Specialist',
      'image': 'assets/images/doc-blessing.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _doctors.length,
        itemBuilder: (context, i) => Container(
            width: width,
            margin: const EdgeInsets.only(right: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: imageHeight,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                      child: Image.asset(
                        _doctors[i]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    _doctors[i]['name'],
                    style: TextStyle(
                        fontSize: nameFont, fontWeight: FontWeight.w500),
                  ),
                  Text(_doctors[i]['type'],
                      style: TextStyle(
                          color: const Color(0xff677294),
                          fontSize: titleFont,
                          fontWeight: FontWeight.w300)),
                  SizedBox(height: spacer),
                  SizedBox(
                    height: 20,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (_, i) => Icon(
                        Icons.star,
                        size: 16,
                        color: i == 4 ? Colors.grey : const Color(0xffF6D060),
                      ),
                    ),
                  ),
                ])),
      ),
    );
  }
}
