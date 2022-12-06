import 'package:doctorhunt/screens/select_time_screen.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  final String id;
  final String name;
  final String type;
  final String experience;
  final String rating;
  final String noOfPatient;
  final String time;
  final String image;
  const SearchResult({
    required this.id,
    required this.name,
    required this.type,
    required this.experience,
    required this.rating,
    required this.noOfPatient,
    required this.time,
    required this.image,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Container(
        height: 175,
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        // onTap: () {
        //   check = true;
        //   // query = suggestionList[index].type;
        //   //close(context, suggestionList[index].type);
        //   showResults(context);
        // },
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                Row(children: [
                  Container(
                      height: 87,
                      width: 92,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(4)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                          ))),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            ],
                          ),
                          Text(
                            type,
                            style: TextStyle(
                              color: theme.primary,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '$experience Years experience ',
                            style: const TextStyle(
                              color: Color(0xff677294),
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const SizedBox(height: 7),
                          Row(children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: theme.primary,
                            ),
                            Text(
                              '  $rating%',
                              style: const TextStyle(
                                color: Color(0xff677294),
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            const SizedBox(width: 20),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: theme.primary,
                            ),
                            Text(
                              '  $noOfPatient Patients',
                              style: const TextStyle(
                                color: Color(0xff677294),
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ])
                        ]),
                  ),
                ]),
              ]),
              const Spacer(),
              ListTile(
                contentPadding: EdgeInsets.zero,
                minVerticalPadding: 0,
                title: Text(
                  'Next Available',
                  style: TextStyle(
                    color: theme.primary,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: RichText(
                  text: TextSpan(
                    text: time,
                    style: const TextStyle(
                        color: Color(0xff677294),
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                    children: const <TextSpan>[
                      TextSpan(
                        text: ' AM tommorow',
                        style: TextStyle(
                          color: Color(0xff677294),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: SizedBox(
                    height: 34,
                    width: 112,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                              SelectTimeScreen.routeName,
                              arguments: id);
                        },
                        child: const Text(
                          'Book Now',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ))),
              )
            ])
        // RichText(
        //   text: TextSpan(
        //     text: suggestionList[index].food.substring(0, query.length),
        //     style: const TextStyle(
        //         color: Colors.black, fontWeight: FontWeight.bold),
        //     children: [
        //       TextSpan(
        //         text: suggestionList[index].food.substring(query.length),
        //         style: const TextStyle(color: Colors.grey),
        //       ),
        //     ],
        //   ),
        // ),
        //trailing: Provider.of<Foods>(context, listen: false).findSearch(query).isEmpty ? Text("aa") : null,
        );
  }
}
