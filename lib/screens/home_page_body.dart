import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    Size size = MediaQuery.of(context).size;
    double qHeight = size.height;
    double qWidth =  size.width;

    return  Column(
        children: [
      Container(
      height: 200,
      color: Colors.blue,
      child: ListView(
        scrollDirection: Axis.horizontal, //top_horizontal_list
        children: horizontalListData.map((image) => TopHorizontalList(image.title, image.imageUrl)).toList(),
      ),
    ),
          Container(
            height: 520,
            color: Theme.of(context).primaryColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: circularImages_1.map((e) => CircularIcons(e.title, e.imageUrl)).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: circularImages_2.map((e) => CircularIcons(e.title, e.imageUrl)).toList(),
                ),
                 Container(
                    height: 80,
                    width: 335,
                    margin: EdgeInsets.only(bottom: 4),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                    child: Container(
                      height: 76,
                      width: 330,
                      child: Card(
                          child: Image.network('https://cdn1.smartprix.com/rx-iCpxOTVnc-w840-h175/CpxOTVnc.jpg',
                          fit: BoxFit.fill,)),
                    ),
                  ),
                Container(
                  height: 180,
                  margin:  EdgeInsets.all(5),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  smallRectangularCard_1.map((e) => SmallRectangularCard(e.title, e.imageUrl)).toList(),
                  ),
                ),

              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              height: 220.0,
              margin: const EdgeInsets.only(bottom: 6.0),
                padding: EdgeInsets.all(5),//Same as `blurRadius` i guess
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.shade800,
                    offset: Offset(0.0, 1.0), //(x,y)
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
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
              height: 330,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Featured Brands', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
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
              height: 140,
              width: 330,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.amber,),
              child: Card(
                  child: Image.network('https://s3b.cashify.in/gpro/uploads/2022/02/24194313/Flipkart-Upcoming-Sale-2022.jpg',
                    fit: BoxFit.fill,)),
            ),
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
                height: 220.0,
                margin: const EdgeInsets.only(bottom: 6.0),
                padding: EdgeInsets.all(5),//Same as `blurRadius` i guess
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.shade800,
                      offset: Offset(0.0, 1.0), //(x,y)
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
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
                height: 220.0,
                margin: const EdgeInsets.only(bottom: 6.0),
                padding: EdgeInsets.all(5),//Same as `blurRadius` i guess
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.shade800,
                      offset: Offset(0.0, 1.0), //(x,y)
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
        ],
      );

  }
}
