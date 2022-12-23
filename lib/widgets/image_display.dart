import 'package:flutter/material.dart';

class TopHorizontalList extends StatelessWidget {

  final String title;
  final String imageUrl;
  const TopHorizontalList(this.title, this.imageUrl,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
     decoration: const BoxDecoration(
         image: DecorationImage(
             image: NetworkImage('https://e1.pxfuel.com/desktop-wallpaper/874/827/desktop-wallpaper-pink-and-purple-star-backgrounds-christmas-blue-and-pink-thumbnail.jpg'),
             fit: BoxFit.cover)),
      child: Image.network(imageUrl,
      fit: BoxFit.cover)
    );
  }
}

class CircularIcons extends StatelessWidget {
  final String title;
  final String imageUrl;
  const CircularIcons(this.title, this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5.5),
          padding: const EdgeInsets.only(bottom: 0),
          child: InkWell(
            child: Column(
              children: [

                  CircleAvatar(backgroundColor: Theme.of(context).colorScheme.tertiary,
                      radius: 30,child: Image.network(imageUrl,),),
                  
                  SizedBox(
                      height: 28,
                      width: 60,
                      child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 8.4),
                      textAlign: TextAlign.center,))
            ]),
            onTap: (){
              print('Button tapped');
            },
          ),
        );
  }
}

class DrawerComponentsDisplay extends StatelessWidget {
  final String text;
  final Icon icon;
  const DrawerComponentsDisplay(this.text, this.icon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.compact,
      horizontalTitleGap: 1.8,
      leading: icon,
      title: Text(text, style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.w400),),
      onTap: (){
        print('ListTile clicked');
      },//connect this too to home page
    );
  }
}

class SmallRectangularCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  const SmallRectangularCard(this.title, this.description, this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 110,
      // padding: const EdgeInsets.all(0.1),
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage('https://i0.wp.com/backgroundabstract.com/wp-content/uploads/edd/2022/01/4865761-e1656071980614.jpg?resize=1000%2C750&ssl=1'),
              fit: BoxFit.cover,),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        children: [
          Card(
           child: Image.network(imageUrl, fit: BoxFit.contain, height: 101, width: 101,),
          ),
          Text(title, style: const TextStyle(fontSize: 11, color: Colors.grey), overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,),
          Text(description, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}

class BigRectangularCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String? description;
  const BigRectangularCard(this.title, this.imageUrl, this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 270,
        width: 165,
        decoration: BoxDecoration(
    image: const DecorationImage(
    image: NetworkImage('https://images.wallpaperscraft.com/image/single/purple_blue_white_spot_65576_240x320.jpg'),
    fit: BoxFit.cover,),
    borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.grey.shade300, width: 0.6)
    ),
      child: Column(
        children: [
          Card(
            child: Image.network(imageUrl, height: 152, width: 150.8,),
          ),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10), overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,),
          Text(description!, style: TextStyle(fontSize: 9, color: Colors.grey.shade800), overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,),
          Padding(
            padding: const EdgeInsets.all(2.8),
            child: Text('BUY NOW', style: TextStyle(color: Colors.green.shade700),),
          )
        ],
      ),
    );
  }
}

class HorizontalList extends StatelessWidget {
  final String title;
  final String imageUrl;
   const HorizontalList(this.title, this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Card(
               margin: const EdgeInsets.all(5),
               elevation: 0,
                child: Image.network(imageUrl, height: 230, width: 340, fit: BoxFit.fill,),
              ),
          Container(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.blue,)
                ],
              )),
          ],
        ),
      );
  }
}


