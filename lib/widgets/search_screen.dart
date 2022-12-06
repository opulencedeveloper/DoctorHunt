import 'package:doctorhunt/widgets/search_result.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/background.dart';
import '../provider/doctors.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = './search-route';
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String query = '';
  @override
  Widget build(BuildContext context) {
    final _suggestionList = query.isEmpty
        ? []
        : Provider.of<Doctors>(context, listen: false).searchDoctorType(query);
    return Scaffold(
        body: SafeArea(
            child: BackGround(
                shadowTop: true,
                widget: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(children: [
                    const SizedBox(height: 10),
                    Row(children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                            onPressed: () =>
                                Provider.of<Doctors>(context, listen: false)
                                    .setScreenState(false),
                            padding: const EdgeInsets.only(left: 9),
                            icon: const Icon(Icons.arrow_back_ios, size: 13)),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'Select Time',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )
                    ]),
                    const SizedBox(height: 40),
                    TextField(
                      autofocus: true,
                      onChanged: (val) => {
                        setState(() {
                          query = val;
                        })
                      },
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: IconButton(
                            onPressed: () => setState(() => query = ''),
                            icon: const Icon(Icons.close,
                                color: Color(0xff677294))),
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
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: _suggestionList.length,
                        itemBuilder: (context, i) => SearchResult(
                          id: _suggestionList[i].id,
                          name: _suggestionList[i].name,
                          type: _suggestionList[i].type,
                          experience: _suggestionList[i].experience,
                          noOfPatient: _suggestionList[i].noOfPatient,
                          image: _suggestionList[i].image,
                          rating: _suggestionList[i].rating,
                          time: _suggestionList[i].time,
                        ),
                      ),
                    ),
                  ]),
                ))));
  }
}
