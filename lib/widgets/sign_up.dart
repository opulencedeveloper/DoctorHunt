import 'package:flutter/material.dart';

import '../screens/tabs_screen.dart';

import './google_facebook_card.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(height: 120),
            const Text('Join us to start searching',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                )),
            const SizedBox(height: 20),
            const Text(
              'You can search c ourse, apply course and find scholarship for abroad studies',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff677294),
              ),
            ),
            const SizedBox(height: 70),
            const GoogleFacebookCard(),
            const SizedBox(height: 35),
            TextFormField(
              // controller: _emailController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                hintText: 'Name',
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
            const SizedBox(height: 20),
            TextFormField(
              // controller: _emailController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                hintText: 'Email',
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
            const SizedBox(height: 20),
            TextFormField(
              // controller: _emailController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.visibility_off),
                hintText: 'Password',
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
                hintText: 'Confirm Password',

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
            RadioListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                "I agree with the Terms of Service & Privacy Policy",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff677294),
                ),
              ),
              value: "male",
              groupValue: 'gender',
              onChanged: (value) {
                // setState(() {
                //     gender = value.toString();
                // });
              },
            ),
            const SizedBox(height: 20),
            Container(
              height: 54,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      TabsScreen.routeName,
                      (Route<dynamic> route) => route.isFirst);
                  // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => TabsScreen()), (Route<dynamic> route) => route.isFirst);
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }
}
