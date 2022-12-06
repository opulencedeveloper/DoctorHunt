import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../tabs/home_tab.dart';
import '../tabs/favorite_tab.dart';
import '../tabs/appointment_tab.dart';
// import '../tabs/profile_tab.dart';

import '../widgets/background.dart';
import '../widgets/search.dart';
import '../provider/doctors.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = './tabs-routeName';
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _pages = const [
    HomeTab(),
    FavoriteTab(),
    AppointmentTab(),
    Search(
      state: true,
    )
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final search = Provider.of<Doctors>(context).getScreenState;
    final theme2 = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: BackGround(
          shadowTop: true,
          widget: search
              ? const Search()
              : IndexedStack(
                  index: _selectedPageIndex,
                  children: _pages,
                ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: search
            ? const SizedBox()
            : BottomNavigationBar(
                selectedFontSize: 0,
                type: BottomNavigationBarType.fixed,
                showUnselectedLabels: true,
                onTap: _selectPage,
                backgroundColor: Colors.white,
                unselectedItemColor: Colors.grey,
                selectedItemColor: Colors.white,
                currentIndex: _selectedPageIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: Stack(alignment: Alignment.center, children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: _selectedPageIndex == 0
                              ? theme2.primaryColor
                              : Colors.transparent,
                        ),
                        Icon(
                          Icons.home,
                          //color: Colors.white,
                        )
                      ]),
                      label: ''),
                  BottomNavigationBarItem(
                    icon: Stack(alignment: Alignment.center, children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: _selectedPageIndex == 1
                            ? theme2.primaryColor
                            : Colors.transparent,
                      ),
                      Icon(
                        Icons.favorite,
                        //color: Colors.white,
                      )
                    ]),
                    label: "Library",
                  ),
                  BottomNavigationBarItem(
                    icon: Stack(alignment: Alignment.center, children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: _selectedPageIndex == 2
                            ? theme2.primaryColor
                            : Colors.transparent,
                      ),
                      Icon(
                        Icons.book,
                        //color: Colors.white,
                      )
                    ]),
                    label: "Saved",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(_selectedPageIndex == 3
                        ? Icons.person
                        : Icons.person_outlined),
                    label: "Profile",
                  ),
                ],
              ),
      ),
    );
  }
}
