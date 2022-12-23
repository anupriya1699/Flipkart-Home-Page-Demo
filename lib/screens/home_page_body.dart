import 'package:flutter/material.dart';
import '../models/image_data.dart';
import '../widgets/image_display.dart';

class FlipkartHomePageBody extends StatefulWidget {
  const FlipkartHomePageBody({Key? key}) : super(key: key);

  @override
  State<FlipkartHomePageBody> createState() => _FlipkartHomePageBodyState();
}

class _FlipkartHomePageBodyState extends State<FlipkartHomePageBody> {
  @override
  Widget build(BuildContext context) {

    return  SingleChildScrollView(
      child: Column(
          children: [
        Container(
        height: 180,
        color: Colors.deepPurple.shade700,
        child: ListView(
          scrollDirection: Axis.horizontal, //top_horizontal_list
          children: horizontalListData.map((image) => TopHorizontalList(image.title, image.imageUrl)).toList(),
        ),
      ),
            Container(
              height: 480,
              color: Theme.of(context).colorScheme.tertiary,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: circularImages_1.map((e) => CircularIcons(e.title, e.imageUrl)).toList(),
                  ),
                  Container(
                    height: 0.6,
                    color: const Color.fromARGB(241, 99, 22, 144),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: circularImages_2.map((e) => CircularIcons(e.title, e.imageUrl)).toList(),
                  ),
                   InkWell(
                     child: Container(
                        height: 76,
                        width: 335,
                        margin: const EdgeInsets.only(bottom: 4, top: 4),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                        child: SizedBox(
                          height: 76,
                          width: 330,
                          child: Card(
                              child: Image.network('https://cdn1.smartprix.com/rx-iCpxOTVnc-w840-h175/CpxOTVnc.jpg',
                              fit: BoxFit.fill,)),
                        ),
                      ),
                     onTap: (){
                       print('Working....');
                     },
                   ),
                  Container(
                    height: 180,
                    margin:  const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    // color: Colors.yellow,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  smallRectangularCard_1.map((e) => SmallRectangularCard(e.title,e.description, e.imageUrl)).toList(),
                    ),
                  ),

                ],
              ),
            ),
            InkWell(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Container(
                  height: 225.0,
                  margin: const EdgeInsets.only(bottom: 6.0),
                    padding: const EdgeInsets.all(5),//Same as `blurRadius` i guess
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.shade800,
                        offset: const Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: bigRectangularCard_1.map((e) => BigRectangularCard(e.title, e.imageUrl, e.description)).toList(),
                  )
                ),
              ),
              onTap: (){
                print('Item clicked...');
              },
            ),
            InkWell(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
                height: 330,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('Featured Brands', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                        height: 280,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: sponsored.map((e) => HorizontalList(e.title, e.imageUrl)).toList(),
                        ))
                  ],
                ),
              ),
              onTap: (){
                print('Featured Brands');
              },
            ),
      Container(
                height: 136,
                width: 333,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.amber,),
                child: Card(
                    child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4uqbAiY8pELtBKJJGbW1-7_mX4fS15CWeAQ&usqp=CAU',
                      fit: BoxFit.fill,)),
              ),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(5.0),
            //   child:
              Container(
                  height: 225.0,
                  margin: const EdgeInsets.only(bottom: 6.0),
                  padding: const EdgeInsets.all(5),//Same as `blurRadius` i guess
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    // boxShadow:[
                    //   BoxShadow(
                    //     color: Colors.grey.shade800,
                    //     offset: Offset(0.0, 1.0), //(x,y)
                    //     blurRadius: 6.0,
                    //   ),
                    // ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: bigRectangularCard_3.map((e) => BigRectangularCard(e.title, e.imageUrl, e.description)).toList(),
                  )
              ),
            // ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                  height: 225.0,
                  margin: const EdgeInsets.only(bottom: 6.0),
                  padding: const EdgeInsets.all(5),//Same as `blurRadius` i guess
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.shade800,
                        offset: const Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: bigRectangularCard_2.map((e) => BigRectangularCard(e.title, e.imageUrl, e.description)).toList(),
                  )
              ),
            ),
            Container()          ///small rectangular boxes
          ],
        ),
    );

  }
}
