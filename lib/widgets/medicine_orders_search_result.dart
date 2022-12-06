import 'package:flutter/material.dart';

class MedicineOrdersSearchResult extends StatelessWidget {
  const MedicineOrdersSearchResult({Key? key}) : super(key: key);

  final List<Map> medicineOrders = const [
    {'icon': Icons.paste, 'title': 'Guide to medicine order'},
    {'icon': Icons.event_note, 'title': 'Prescription related issues'},
    {'icon': Icons.delivery_dining, 'title': 'Order status'},
    {'icon': Icons.shopping_cart, 'title': 'Order delivery'},
    {'icon': Icons.credit_card, 'title': 'Payments & Refunds'},
    {'icon': Icons.reply_rounded, 'title': 'Order returns'},
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final mediaQuery = MediaQuery.of(context).size.height;
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 180,
          mainAxisExtent: 160, //height
          childAspectRatio: 2 / 1,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemCount: medicineOrders.length,
        itemBuilder: (_, i) => GestureDetector(
          // onTap: () => Navigator.of(context).pushNamed(
          //     DoctorsDetailsScreen.routeName,
          //     arguments: doctors[i].id),
          child: Container(
            height: 160,
            width: 160,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xffC6EFE5),
                  radius: 38,
                  child: Icon(
                    medicineOrders[i]['icon'],
                    color: theme.primary,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  medicineOrders[i]['title'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xff677294),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
