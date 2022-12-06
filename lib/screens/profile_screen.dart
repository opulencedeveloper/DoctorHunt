import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/drawer.dart';
import '../widgets/profile_top.dart';
import '../widgets/personal_info.dart';
import '../widgets/profile_edit.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = './profile-route';

  const ProfileScreen({Key? key}) : super(key: key);
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var myValue = '';
  var myTitle = '';
  
  bool screenState = true;
  void _setter(String title, String value) {
    setState(() {
      myTitle = title;
        myValue = value;
      screenState = !screenState;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: screenState ? null : const Color(0xff546285),
      drawer: screenState ? const MyDrawer() : null,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0),
          child: AppBar(
            leadingWidth: 40,
            leading: screenState
                ? null
                : Container(
                    height: 11,
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () =>
                          setState(() => screenState = !screenState),
                      padding: const EdgeInsets.only(left: 7),
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 13,
                        color: Color(0xff677294),
                      ),
                    ),
                  ),
            iconTheme: const IconThemeData(color: Colors.white),
            elevation: 0,
            backgroundColor: screenState ? theme.primary : Colors.transparent,
            title: Padding(
                padding: EdgeInsets.only(
                  top: screenState ? 3 : 10,
                ),
                child: const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                )),
          )),
      body: SafeArea(
        child: BackGround(
          shadowTop: screenState ? true : false,
          shadowBottom: screenState ? true : false,
          widget: SingleChildScrollView(
            primary: false,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              if (!screenState)
                ProfileEdit(value: myValue, title: myTitle),
              if (screenState) const ProfileTop(),
              if (screenState)
                PersonalInfo(
                    setter: _setter,
                    ),
            ]),
          ),
        ),
      ),
    );
  }
}
