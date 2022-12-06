import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Reset Password',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            )),
        const SizedBox(height: 20),
        const Text(
          'Set the new password for your account so you can login and access all the features.',
          style: TextStyle(
            color: Color(0xff677294),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 35),
        Form(
            child: Column(
          children: [
            TextFormField(
              // controller: _emailController,
              autovalidateMode: AutovalidateMode.onUserInteraction,

              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.visibility_off),
                hintText: 'New Password',

                hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff677294)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(
                      color: const Color(0xff677294).withOpacity(0.16)),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(
                      color: const Color(0xff677294).withOpacity(0.16)),
                ),
                // hintText: 'Mobile Number',
                //labelText: 'Chexk',
                //fillColor: Colors.white,
                //filled: true,
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 20),
            TextFormField(
              // controller: _emailController,
              autovalidateMode: AutovalidateMode.onUserInteraction,

              decoration: InputDecoration(
                hintText: 'Re-enter Password',

                suffixIcon: const Icon(Icons.visibility_off),
                hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff677294)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(
                      color: const Color(0xff677294).withOpacity(0.16)),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(
                      color: const Color(0xff677294).withOpacity(0.16)),
                ),
                // hintText: 'Mobile Number',
                //labelText: 'Chexk',
                //fillColor: Colors.white,
                //filled: true,
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty || !value.contains('@')) {
                  return 'Invalid email!';
                }
                return null;
              },
              onSaved: (value) {
                //_authData['email'] = value as String;
              },
            ),
          ],
        )),
        const SizedBox(height: 10)
      ],
    );
  }
}
