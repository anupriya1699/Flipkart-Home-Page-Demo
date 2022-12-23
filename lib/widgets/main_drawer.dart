
import 'package:flipkart_demo_app/models/drawer_data.dart';
import 'package:flipkart_demo_app/widgets/image_display.dart';
import 'package:flutter/material.dart';

import '../screens/home_page_appBar.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height:15,
              width: double.infinity,
              color: Theme.of(context).colorScheme.primary
          ),
          GestureDetector(
            child: Container(
              height: 80,
              width: double.infinity,
              color: Theme.of(context).colorScheme.primary,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.home, color: Colors.white,),
                      SizedBox(width: 10,),
                      Text('Home', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                    ],
                  ),
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGS9z9Q6whRL6toSE-YCtpJZvq1lU76ktzTw&usqp=CAU')
                ],
              ),
            ),
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
                print('working');
                return const FlipkartHomePageAppbar();
              }));}, //connect this to home page
          ),
          Column(
      children: drawerElements.map((e) => DrawerComponentsDisplay(e.text, e.icon)).toList(),
      ),
          Container(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            visualDensity: VisualDensity.compact,
            title: Text('Notification Preferences',style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.w400),),
          ),
          ListTile(
            visualDensity: VisualDensity.compact,
            title: Text('Help Center', style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.w400),),
          ),
          ListTile(
            visualDensity: VisualDensity.compact,
            title: Text('Privacy Policy', style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.w400),),
      ),
          ListTile(
            visualDensity: VisualDensity.compact,
            title: Text('Legal', style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.w400),),
      )
        ],
      ),
    );
  }
}
