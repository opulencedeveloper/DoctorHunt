import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/add_record_bottom_sheet.dart';
import '../widgets/drawer.dart';

class MedicalRecordsScreen extends StatelessWidget {
  static const routeName = './medical-records-route';
  const MedicalRecordsScreen({Key? key}) : super(key: key);

  void _bottomSheet(BuildContext ctx) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      context: ctx,
      builder: (_) {
        return const AddRecordButtomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: theme.primary),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Medical Records',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: BackGround(
          shadowTop: true,
          widget: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                  child: Icon(Icons.paste_rounded,
                      color: theme.primary, size: 120),
                  radius: 107,
                  backgroundColor: const Color(0xffC6EFE5)),
              const SizedBox(height: 40),
              const Text(
                'Add a medical records',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'A detailed health history helps a doctor diagnose you btter.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff677294),
                ),
              ),
              const SizedBox(height: 35),
              Container(
                height: 54,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () => _bottomSheet(context),
                  child: const Text(
                    'Add a record',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ]),
          ),
        ),
      ),
    );
  }
}
