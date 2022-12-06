import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/sign_up.dart';
import '../widgets/sign_in.dart';

class AuthScreen extends StatefulWidget {
  static const routeName = './auth-route';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool section = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: BackGround(
          shadowTop: true,
          widget: SingleChildScrollView(
            child: Column(children: [
              if (section) SignUp(),
              if (!section) SignIn(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    section ? 'Have an account?' : 'Don\'t have an account?',
                    style: TextStyle(
                        color: theme.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => section = !section),
                    child: Text(
                      section ? ' Log in' : ' Join us',
                      style: TextStyle(
                          color: theme.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20)
            ]),
          ),
        ),
      ),
    );
  }
}
