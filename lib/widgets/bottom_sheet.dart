import 'package:flutter/material.dart';

import './forgot_password.dart';
import './verify_code.dart';
import './reset_password.dart';

class BottomSheet extends StatefulWidget {
  const BottomSheet({Key? key}) : super(key: key);

  @override
  _BottomSheetState createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: index == 2 ? 460 : 390,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 5,
            width: 130,
            decoration: BoxDecoration(
              color: const Color(0xffC4C4C4),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
        const SizedBox(height: 50),
        if (index == 0) const ForgotPassword(),
        if (index == 1) const VerifyCode(),
        if (index == 2) const ResetPassword(),
        const SizedBox(height: 30),
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
              setState(() => index++);
              if (index == 3) Navigator.of(context).pop();
            },
            child: Text(
              index == 2 ? 'Update Password' : 'Continue',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ]),
    );
  }
}
