import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text('Enter 4 Digits Code',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          )),
      const SizedBox(height: 20),
      const Text(
        'Enter the 4 digits code that you received on your email.',
        style: TextStyle(
          color: Color(0xff677294),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      const SizedBox(height: 20),
      Form(
        child: SizedBox(
          height: 54.17,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 54.17,
                  child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(
                          color: theme.primary,
                          fontSize: 26,
                          fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                              color: const Color(0xff677294).withOpacity(0.16)),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                              color: const Color(0xff677294).withOpacity(0.16)),
                        ),
                        // hintText: 'Mobile Number',
                        //labelText: 'Chexk',
                        //fillColor: Colors.white,
                        //filled: true,
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ])),
              const SizedBox(width: 10),
              SizedBox(
                  width: 54.17,
                  child: TextFormField(
                      style: TextStyle(
                          color: theme.primary,
                          fontSize: 26,
                          fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                              color: const Color(0xff677294).withOpacity(0.16)),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                              color: const Color(0xff677294).withOpacity(0.16)),
                        ),
                        // hintText: 'Mobile Number',
                        //labelText: 'Chexk',
                        //fillColor: Colors.white,
                        //filled: true,
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ])),
              const SizedBox(width: 10),
              SizedBox(
                  width: 54.17,
                  child: TextFormField(
                      style: TextStyle(
                          color: theme.primary,
                          fontSize: 26,
                          fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                              color: const Color(0xff677294).withOpacity(0.16)),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                              color: const Color(0xff677294).withOpacity(0.16)),
                        ),
                        // hintText: 'Mobile Number',
                        //labelText: 'Chexk',
                        //fillColor: Colors.white,
                        //filled: true,
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ])),
              const SizedBox(width: 10),
              SizedBox(
                  width: 54.17,
                  child: TextFormField(
                      style: TextStyle(
                          color: theme.primary,
                          fontSize: 26,
                          fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                              color: const Color(0xff677294).withOpacity(0.16)),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(
                              color: const Color(0xff677294).withOpacity(0.16)),
                        ),
                        // hintText: 'Mobile Number',
                        //labelText: 'Chexk',
                        //fillColor: Colors.white,
                        //filled: true,
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                          //Navigator.of(context).pushNamed(InviteScreen.routeName);
                        }
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ]))
            ],
          ),
        ),
      ),
    ]);
  }
}
