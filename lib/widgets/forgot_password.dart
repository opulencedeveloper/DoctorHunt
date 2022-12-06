import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Forgot password',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            )),
        const SizedBox(height: 20),
        const Text(
          'Enter your email for the verification proccesss, we will send 4 digits code to your email.',
          style: TextStyle(
            color: Color(0xff677294),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 35),
        TextField(
          decoration: InputDecoration(
            hintText: 'Email',
            hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xff677294)),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              borderSide:
                  BorderSide(color: const Color(0xff677294).withOpacity(0.16)),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              borderSide:
                  BorderSide(color: const Color(0xff677294).withOpacity(0.16)),
            ),
            // hintText: 'Mobile Number',
            //labelText: 'Chexk',
            //fillColor: Colors.white,
            //filled: true,
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}
