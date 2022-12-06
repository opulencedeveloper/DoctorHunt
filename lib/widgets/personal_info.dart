import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/doctors.dart';

class PersonalInfo extends StatefulWidget {
  Function setter;
  PersonalInfo({
    Key? key,
    required this.setter,
  }) : super(key: key);

  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final List<Map> _content = [
    {'id': 1, 'title': 'Name', 'subTitle': 'Amobi Victor'},
    {'id': 2, 'title': 'Contact Number', 'subTitle': '+2348184297165'},
    {'id': 3, 'title': 'Date of Birth', 'subTitle': 'DD MM YYYY'},
    {'id': 4, 'title': 'Location', 'subTitle': 'Add details'}
  ];
void _edit(String id, String val) {

for(var value in _content) {
print(id);
if(value["title"] == id) {
print(val);
value["subTitle"] = val;

} 

} 

} 
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
   final id = Provider.of<Doctors>(context, listen: false).getId;
 final val  = Provider.of<Doctors>(context, listen: false).getVal;
      _edit(id, val);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 13),
        const Text(
          'Personal information',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 13),
        Column(
            children: _content
                .map((e) => GestureDetector(
                    onTap: () => widget.setter(e['title'],
                                             e['subTitle'], ),
                    child: Container(
                        height: 60,
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      e['title'],
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: theme.primary,
                                      ),
                                    ),
                                    Text(
                                      e['subTitle'],
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff677294),
                                      ),
                                    ),
                                  ]),
                              e['id'] == 2 || e['id'] == 3
                                  ? Icon(
                                      Icons.edit,
                                      size: 15,
                                      color: Color(0xff677294),
                                    )
                                  : const SizedBox()
                            ]))))
                .toList())
      ]),
    );
  }
}
