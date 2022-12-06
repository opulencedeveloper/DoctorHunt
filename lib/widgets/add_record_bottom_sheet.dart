import '../screens/add_record_screen.dart';
import 'package:flutter/material.dart';

class AddRecordButtomSheet extends StatelessWidget {
  const AddRecordButtomSheet({Key? key}) : super(key: key);

  Widget buildListTile(IconData icon, String title, VoidCallback tapHandler,
      BuildContext context) {
    return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(
            icon,
            color: const Color(0xff677294),
          ),
          title: Text(
            title,
            style: const TextStyle(
              color: Color(0xff677294),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          onTap: tapHandler,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 5,
              width: 130,
              decoration: BoxDecoration(
                color: const Color(0xffC4C4C4),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Add a record',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          
          buildListTile(
              Icons.camera_alt_rounded,
              'Take a photo',
              () => Navigator.of(context)
                  .pushReplacementNamed(AddRecordScreen.routeName),
              context),
          
          buildListTile(
              Icons.photo,
              'Upload from gallery',
              () => Navigator.of(context)
                  .pushReplacementNamed(AddRecordScreen.routeName),
              context),
          
          buildListTile(
              Icons.file_present_outlined,
              'Upload files',
              () => Navigator.of(context)
                  .pushReplacementNamed(AddRecordScreen.routeName),
              context),const SizedBox(height: 10),
        ]));
  }
}
