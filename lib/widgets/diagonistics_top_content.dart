import 'package:flutter/material.dart';

class DiagonisticsTopContent extends StatelessWidget {
  const DiagonisticsTopContent({Key? key}) : super(key: key);

  Widget buildListTile(IconData icon, String title, int i) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 10,
      leading: Container(
          width: 46,
          height: 52.94,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(i == 0
                    ? 0xff2753F3
                    : i == 1
                        ? 0xffFF484C
                        : i == 2
                            ? 0xffFE7F44
                            : 0xff0EBE7E),
                Color(i == 0
                    ? 0xff765AFC
                    : i == 1
                        ? 0xffFF6C60
                        : i == 2
                            ? 0xffFFCF68
                            : 0xff07D9AD),
              ],
            ),
          ),
          child: Icon(icon, color: Colors.white)),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: null,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Text(
          'Get Full body health checkups from the comfort of your home.',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Up to 45% off + get 10% healthcash back',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: theme.primary,
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
            height: 170,
            child: GridView(
              children: [
                buildListTile(Icons.home, 'Free home Sample pickup', 0),
                buildListTile(Icons.person, 'Practoasociate labs', 1),
                buildListTile(Icons.paste, 'E-Reports in 24-72 hours', 2),
                buildListTile(
                    Icons.science_outlined, 'Free follow-up with a doctor', 3),
              ],
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisExtent: 65, //height
                childAspectRatio: 2 / 1,
                crossAxisSpacing: 1,
                mainAxisSpacing: 15,
              ),
            ))
      ],
    );
  }
}
