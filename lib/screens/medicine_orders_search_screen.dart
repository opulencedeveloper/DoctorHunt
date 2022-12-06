import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/medicine_orders_search_result.dart';

class MedicineOrdersSearchScreen extends StatelessWidget {
  static const routeName = './medicine-orders-search-route';

  const MedicineOrdersSearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 48,
        leadingWidth: 48,
        title: const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              'Medicine Orders',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            )),
        leading: Container(
          height: 30,
          width: 30,
          margin: const EdgeInsets.only(left: 16, top: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            padding: const EdgeInsets.only(left: 7),
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 13,
              color: Color(0xff677294),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: BackGround(
          shadowTop: true,
          widget: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(children: [
              const SizedBox(height: 20),
              TextField(
                onChanged: (val) => {
                  // setState(() {
                  //   query = val;
                  // })
                },
                //controller: _controller,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                      onPressed: () {
                        // _controller.clear();
                        // setState(() => query = '');
                      },
                      icon: const Icon(Icons.close, color: Color(0xff677294))),
                  hintText: 'search',
                  hintStyle: const TextStyle(
                    color: Color(0xff677294),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const MedicineOrdersSearchResult(),
              const SizedBox(height: 10),
            ]),
          ),
        ),
      ),
    );
    ;
  }
}
