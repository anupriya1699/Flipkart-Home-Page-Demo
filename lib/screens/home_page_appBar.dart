import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../widgets/bottom_tab_bar.dart';
import '../screens/home_page_body.dart';
import 'package:flipkart_demo_app/widgets/main_drawer.dart';


class FlipkartHomePageAppbar extends StatefulWidget {
  const FlipkartHomePageAppbar( {Key? key}) : super(key: key);

  @override
  State<FlipkartHomePageAppbar> createState() => _FlipkartHomePageAppbarState();
}

class _FlipkartHomePageAppbarState extends State<FlipkartHomePageAppbar> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    // double qHeight = size.height;
    // double qWidth =  size.width;

  final _appBar =  AppBar(title: const Text('Flipkart'),);

    return Scaffold(
      appBar:_appBar,
      body: SingleChildScrollView(
        child:
        Column(
          children: [
            Container(
                padding: const EdgeInsets.all(5),
                height: 135,
                child: Column(
                          children: [
                            Row(
                              children: [       //will contain two cards for 'flipkart' & 'Grocery'
                              // children: topBar.map((e) => TopBar(e.title, e.imageUrl)).toList()
                                  Expanded(
                                    child: Container(
                                      height: 40,
                                      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                                    // padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                      color:  Theme.of(context).colorScheme.primary,),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGS9z9Q6whRL6toSE-YCtpJZvq1lU76ktzTw&usqp=CAU', height: 20, width: 20,),
                                          const SizedBox(width: 2,),
                                          const Text('Flipkart', style: TextStyle(fontWeight:  FontWeight.bold, color: Colors.white, fontSize: 10),),
                                        ],
                                      ),
                                      onPressed: (){
                                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
                                          print('working');
                                          return FlipkartHomePageAppbar();
                                        }));
                                      },
                                    ),
                                  ),
                                ) , // 'Flipkart'
                               Expanded(
                                 child: Container(
                                   height: 40,
                                   margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                                   // padding: const EdgeInsets.all(5),
                                   decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                                     // color: Theme.of(context).colorScheme.secondary,
                                     ),
                                   child: ElevatedButton(
                                     style: ElevatedButton.styleFrom(
                                       backgroundColor: Theme.of(context).colorScheme.secondary,
                                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                     ),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         Image.network('https://rukminim1.flixcart.com/fk-p-flap/128/128/image/d154c0b4d536c1cf.png?q=100', height: 20, width: 20,),
                                         const SizedBox(width: 2,),
                                         const Text('Grocery', style: TextStyle(color: Colors.black, fontWeight:  FontWeight.bold,  fontSize: 10),)
                                       ],
                                     ),
                                     onPressed: (){
                                       print('Grocery');
                                     },
                                   ),
                                 ),
                               )
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text('Brand Mall', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey.shade600),),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: FlutterSwitch(
                                          height: 18,
                                          width: 52,
                                          padding: 2,
                                          borderRadius: 10,
                                          showOnOff: true,
                                          valueFontSize: 8,
                                          activeColor: Colors.black,
                                          inactiveColor: Colors.grey,
                                          activeText: 'ON',
                                          activeTextColor: Colors.white,
                                          inactiveText: 'OFF',
                                          inactiveTextColor: Colors.black,
                                          value: _value, onToggle: (newValue){
                                          setState(() {
                                            _value=newValue;
                                          });},
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 40,
                                    decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
                                    border: Border.all(color:  Theme.of(context).colorScheme.tertiary),
                                    borderRadius: BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Theme.of(context).colorScheme.tertiary,)),
                                        TextButton(onPressed: (){}, child: Text('Search for product',
                                          style:  TextStyle(color: Theme.of(context).colorScheme.tertiary,
                                            fontWeight: FontWeight.w300),)),
                                        SizedBox(width: 20, child: IconButton(onPressed: (){}, icon: Icon(Icons.mic_none, color: Theme.of(context).colorScheme.tertiary,))),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.photo_camera_outlined, color: Theme.of(context).colorScheme.tertiary,))
                                      ],
                                    ),
                                  )
                                ]
                              ),
                            ),
                          ], // will contain a switch and a search tab
                        ),
              ),
            // ),
        const FlipkartHomePageBody(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomTabBar(),
      drawer: const Drawer(child: MainDrawer()),
    );
  }
}
