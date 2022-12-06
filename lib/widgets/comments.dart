import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  Comments({Key? key}) : super(key: key);
  final List<Map> _users = [
    {
      'name': 'Everhart Tween',
      'comment': 'Thanks for sharing doctor',
      'image': 'assets/images/user1.png'
    },
    {
      'name': 'Bonebrake Mash',
      'comment': 'They treat immune system disorders',
      'image': 'assets/images/user2.png'
    },
    {
      'name': 'Handler Wack',
      'comment': 'This is the largest directory',
      'image': 'assets/images/user3.png'
    },
    {
      'name': 'Comfort Love',
      'comment': 'Depending on their education',
      'image': 'assets/images/user4.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size.height * 0.5;
    final theme = Theme.of(context).colorScheme;
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: mediaQuery,
        child: Column(children: [
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: _users.length,
              itemBuilder: (_, i) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(_users[i]['image']),
                ),
                title: Text(
                  _users[i]['name'],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  _users[i]['comment'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: CircleAvatar(
                  radius: 22,
                  backgroundColor: theme.primary,
                  child: const Icon(Icons.chat, color: Colors.white)),
              suffixIcon: const Icon(Icons.favorite),
              hintText: '   Add a comment.....',
              hintStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(27),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              prefixIconConstraints: const BoxConstraints(
                minWidth: 60,
              ),
              suffixIconConstraints: const BoxConstraints(
                minWidth: 60,
              ),
              contentPadding: const EdgeInsets.all(22),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ]));
  }
}
