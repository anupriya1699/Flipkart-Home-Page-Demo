import 'package:flipkart_demo_app/screens/dummy_gorcery_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:ionicons/ionicons.dart';
import '../widgets/bottom_tab_bar.dart';
import '../screens/home_page_body.dart';
import 'package:flipkart_demo_app/widgets/main_drawer.dart';
import 'dummy_search_screen.dart';


class FlipkartHomePageAppbar extends StatefulWidget {
  const FlipkartHomePageAppbar( {Key? key}) : super(key: key);

  @override
  State<FlipkartHomePageAppbar> createState() => _FlipkartHomePageAppbarState();
}

class _FlipkartHomePageAppbarState extends State<FlipkartHomePageAppbar> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                backgroundColor: Colors.white,
                pinned: false,
                floating: false,
                snap: false,
                toolbarHeight: 50.0,
                actions: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 13, right: 8, top: 10, bottom: 0),
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
                                  fontSize: 14.5,
                                  fontStyle: FontStyle.italic),
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
                      margin: const EdgeInsets.only(left: 12, right: 9, top: 10, bottom: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
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
                              'https://cdn-icons-png.flaticon.com/512/3724/3724788.png',
                              height: 25,
                              width: 23,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text(
                              'Grocery',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.5,
                              fontStyle: FontStyle.italic),
                            )
                          ],
                        ),
                        onPressed: () {
                          print('Grocery');
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
                            return const GroceryScreen();
                          }));
                        },
                      ),
                    ),
                  )
                ],

          ),
            SliverAppBar(
                automaticallyImplyLeading: false,
              pinned: true,
              snap: false,
              floating: false,
              backgroundColor: Colors.white,
              actions: [  Container(
                       // color: Colors.yellow,
                       margin: const EdgeInsets.only(top: 5),
                         padding: const EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 7),
                       child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 4.7),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                        Text(
                                          'Brand Mall',
                                           style: TextStyle(
                                           fontSize: 9.8,
                                           fontWeight: FontWeight.w600,
                                           color: Colors.grey[600]),
                                           ),
                                      Padding(
                                           padding: const EdgeInsets.all(4.0),
                                           child: FlutterSwitch(
                                           height: 15,
                                           width: 42,
                                           padding: 0.8,
                                           borderRadius: 10,
                                           showOnOff: true,
                                           toggleSize: 15,
                                           valueFontSize: 8.5,
                                           activeColor: Colors.black,
                                           inactiveColor: const Color.fromARGB(
                                               255, 220, 222, 222),
                                           activeText: 'ON',
                                           activeTextColor: Colors.white,
                                           activeTextFontWeight: FontWeight.w500,
                                           inactiveText: 'OFF',
                                           inactiveTextColor: Colors.black,
                                           inactiveTextFontWeight: FontWeight.w500,
                                           value: _value,
                                          onToggle: (newValue) {
                                                       setState(() {
                                                           _value = newValue;
                                                                   });
                                                               },
                                              ),
                                            ),
                                            ],
                                           ),
                              ),
                             const SizedBox(
                               width: 15,
                             ),
                             Container(
                                   height: 40,
                                   width: 270,
                                   padding: EdgeInsets.all(8),
                                   decoration: BoxDecoration(
                                                  color: const Color.fromARGB(250, 241, 243, 247),
                                                  border: Border.all(
                                                             color: Color.fromARGB(255, 214, 214, 214)),
                                                             borderRadius: BorderRadius.circular(6)),
                                   child: Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: [
                                                    InkWell(
                                                         child: SizedBox(
                                                                   height: 40,
                                                                   width: 190,
                                                                   child: Row(
                                                                            children:[
                                                                                 Icon(
                                                                                    Ionicons.search_outline,
                                                                                    color: Colors.grey[600],
                                                                                    size: 16,
                                                                                     ),
                                                                                 Container(
                                                                                    margin: const EdgeInsets.only(left: 10),
                                                                                    // width: 140,
                                                                                    // color: Colors.orange,
                                                                                    child: Text(
                                                                                             'Search for products',
                                                                                              style: TextStyle(
                                                                                              color: Colors.grey.shade600,
                                                                                              fontWeight: FontWeight.w400,
                                                                                              fontSize: 14),
                                                                                                ),
                                                                                          )
                                                                                    ],
                                                                              ),
                                                                        ),
                                                      onTap: (){
                                                              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                                                              print('Search working.');
                                                              return const SearchScreen();
                                                                }));
                                                                },
                                                          ),
                                                    Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                                     SizedBox(
                                                                           width: 30,
                                                                           child: IconButton(
                                                                               padding: EdgeInsets.only(bottom: 2),
                                                                               onPressed: () {},
                                                                               icon: Icon(
                                                                                      Ionicons.mic_outline,
                                                                                      color: Colors.grey.shade600,
                                                                                      size: 20.8,
                                                                                          )),
                                                                             ),
                                                                      SizedBox(
                                                                           width: 30,
                                                                           child: IconButton(
                                                                               padding: const EdgeInsets.only(bottom: 2),
                                                                               onPressed: () {},
                                                                               icon: Icon(
                                                                                        Ionicons.camera_outline,
                                                                                        color: Colors.grey.shade600,
                                                                                        size: 20.8,
                                                                                          )),
                                                                              )
                                                                ],
                                                      )
                                                      ],
                                             ),
                                     )
                                  ],
                                ),
                       ),
                ] ///preferred size, flexibleSpaceBar
              ),
          ];
        },
        body: const FlipkartHomePageBody(),
      ),
      bottomNavigationBar: const BottomTabBar(),
      drawer: const Drawer(child: MainDrawer()),
    );
  }
}
