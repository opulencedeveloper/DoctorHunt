import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/favorite_search_result.dart';

import '../provider/doctors.dart';

class FavoriteSearch extends StatefulWidget {
  const FavoriteSearch({Key? key}) : super(key: key);

  @override
  _FavoriteSearchState createState() => _FavoriteSearchState();
}

class _FavoriteSearchState extends State<FavoriteSearch> {
  String query = '';
  final _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  final List<Doctor> _empty = [];

  @override
  Widget build(BuildContext context) {
    final _suggestionList = query.isEmpty
        ? _empty
        : Provider.of<Doctors>(context, listen: false).searchDoctorType(query);
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextField(
          onChanged: (val) => {
            setState(() {
              query = val;
            })
          },
          controller: _controller,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
                onPressed: () {
                  _controller.clear();
                  setState(() => query = '');
                },
                icon: const Icon(Icons.close, color: Color(0xff677294))),
            hintText: 'Search...(Eg. Dentist or Specialist)',
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
      ),
      FavoriteSearchResult(doctors: _suggestionList),
    ]);
  }
}
