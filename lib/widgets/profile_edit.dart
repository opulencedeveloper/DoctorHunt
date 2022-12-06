import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/doctors.dart';

class ProfileEdit extends StatelessWidget {
  final String value;
  final String title;
  
  ProfileEdit(
      {Key? key,
      required this.value,
      required this.title,
      })
      : super(key: key);
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    _controller.text = value;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 150),
        Text(
          'What is your ${title.toLowerCase()}?',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          controller: _controller,
          autofocus: true,
          onChanged: (mvalue) {
            Provider.of<Doctors>(context, listen: false).edit(title, mvalue);
          },
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}
