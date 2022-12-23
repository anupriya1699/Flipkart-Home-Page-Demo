import 'package:flutter/material.dart';

import 'home_page_appBar.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        actions: [
          Expanded(
            child: Container(
              // height: 30,
              margin: const EdgeInsets.only(left: 13, right: 8, top: 10, bottom: 8),
              // padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme
                    .of(context)
                    .colorScheme
                    .secondary,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGS9z9Q6whRL6toSE-YCtpJZvq1lU76ktzTw&usqp=CAU',
                      height: 28,
                      width: 28,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text(
                      'Flipkart',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 14.5),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (_) {
                    print('working');
                    return const FlipkartHomePageAppbar();
                  }));
                },
              ),
            ),
          ),
          // 'Flipkart'
          Expanded(
            child: Container(
              // height: 38,
              margin: const EdgeInsets.only(left: 12, right: 9, top: 10, bottom: 8),
              // padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Theme.of(context).colorScheme.secondary,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.1,
                  backgroundColor:
                  const Color.fromARGB(250, 241, 243, 247),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://rukminim1.flixcart.com/fk-p-flap/128/128/image/d154c0b4d536c1cf.png?q=100',
                      height: 28,
                      width: 28,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text(
                      'Grocery',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.5),
                    )
                  ],
                ),
                onPressed: () {
                  print('Grocery');
                },
              ),
            ),
          )
        ],
      ),
      body: const Center(
        child: Text('Groceries...', style: TextStyle(fontSize: 25),)
      ),
    );
  }
}
