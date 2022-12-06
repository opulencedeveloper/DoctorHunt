import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './search_result.dart';

import '../provider/doctors.dart';
import '../widgets/doctor_types.dart';

class Search extends StatefulWidget {
  final bool state;
  const Search({Key? key, this.state = false}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String query = '';
  final _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _suggestionList = query.isEmpty
        ? Provider.of<Doctors>(context, listen: false).doctors
        : Provider.of<Doctors>(context, listen: false).searchDoctorType(query);
    String _header =
        Provider.of<Doctors>(context, listen: false).getSearchHeader;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 20),
        if (widget.state)
          const Text(
            'Doctors',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        if (!widget.state)
          Row(children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                onPressed: () => Provider.of<Doctors>(context, listen: false)
                    .setScreenState(false),
                padding: const EdgeInsets.only(left: 7),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 13,
                  color: Color(0xff677294),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Text(
              _header,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            )
          ]),
        const SizedBox(height: 30),
        TextField(
          autofocus: widget.state ? false : true,
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
            hintText: 'Search...(Eg. Dentist)',
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
        const SizedBox(height: 20),
        if (widget.state) const DoctorTypes(),
        if (widget.state) const SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            primary: false,
            padding: EdgeInsets.zero,
            itemCount: _suggestionList.length,
            itemBuilder: (context, i) => SearchResult(
              id: _suggestionList[i].id,
              name: _suggestionList[i].name,
              type: _suggestionList[i].type,
              experience: _suggestionList[i].experience,
              rating: _suggestionList[i].rating,
              noOfPatient: _suggestionList[i].noOfPatient,
              time: _suggestionList[i].time,
              image: _suggestionList[i].image,
            ),
          ),
        ),
      ]),
    );
  }
}
