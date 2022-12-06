import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/doctors.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 120,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0)),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              theme.colorScheme.primary,
              theme.primaryColor,
            ],
          ),
        ),
      ),
      Positioned(
        top: 1,
        left: 15,
        right: 15,
        child: Row(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            Text(
              'Hi Handwerker',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              'Find Your Doctor',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ]),
          const Spacer(),
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/patient.png'),
          ),
        ]),
      ),
      Positioned(
          bottom: -30,
          right: 15,
          left: 15,
          child: Padding(
            
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              //showCursor: true,
             readOnly: true,
              //autofocus: false,

              //textInputAction: TextInputAction.none,

              onTap: () => Provider.of<Doctors>(context, listen: false)
                  .setScreenState(true, 'Find Doctors'),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search...',
                hintStyle: const TextStyle(
                  color: Color(0xff677294),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
          )),
    ]);
  }
}
