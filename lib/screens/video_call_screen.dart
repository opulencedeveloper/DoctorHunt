import 'package:flutter/material.dart';

import '../widgets/comments.dart';

class VideoCallScreen extends StatefulWidget {
  static const routeName = '/video-route';
  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  _VideoCallScreenState createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  var _loadedInitData = false;
  String? _image;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_loadedInitData) {
      _image = ModalRoute.of(context)?.settings.arguments.toString();
      // print(_id);
    }
    _loadedInitData = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(_image.toString(), fit: BoxFit.cover)),
      Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black,
                Colors.transparent,
              ],
            ),
          )),
      Align(alignment: Alignment.bottomCenter, child: Comments()),
      Positioned(
        left: 12,
        right: 12,
        top: 10,
        child: Row(children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                padding: const EdgeInsets.only(left: 9),
                icon: const Icon(Icons.arrow_back_ios)),
          ),
          const Spacer(),
          CircleAvatar(
            backgroundImage: AssetImage(_image.toString()),
          )
        ]),
      )
    ])));
  }
}
