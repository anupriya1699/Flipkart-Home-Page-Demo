import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopBar(this.title, this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: 50,
      child: Container(
        height: 35,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        // padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          // color:  Theme.of(context).colorScheme.primary,
    ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.primary,
            disabledForegroundColor: Colors.grey,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(imageUrl, height: 20, width: 20,),
              const SizedBox(width: 2,),
              Text(title, style: const TextStyle( fontWeight:  FontWeight.bold, color: Colors.white),),
            ],
          ),
          onPressed: (){},
        ),
      ),
    );
  }
}

class TopHorizontalList extends StatelessWidget {

  final String title;
  final String imageUrl;
  const TopHorizontalList(this.title, this.imageUrl,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
     decoration: const BoxDecoration(
         image: DecorationImage(
             image: NetworkImage('https://i.pinimg.com/originals/ee/1a/c5/ee1ac500c1c80a7a57a25ffe173fee59.jpg'),
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
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5.5),
          child: GestureDetector(
            child: Column(
              children: [

                  CircleAvatar(backgroundColor: Theme.of(context).primaryColor,
                      radius: 30,child: Image.network(imageUrl,),),
                  
                  SizedBox(
                      height: 40,
                      width: 60,
                      child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 10),
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
      horizontalTitleGap: 1,
      leading: icon,
      title: Text(text, style: TextStyle(color: Colors.grey.shade700),),
      onTap: (){
        print('ListTile clicked');
      },//connect this too to home page
    );
  }
}

class SmallRectangularCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  const SmallRectangularCard(this.title, this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: 110,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-JGTVrLEP15wZJ3i8fyLMiI20UNt2k0KgLQ&usqp=CAU'),
              fit: BoxFit.cover,),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        children: [
          Card(
           child: Image.network(imageUrl, fit: BoxFit.contain,),
          ),
          Text(title, style: const TextStyle(fontSize: 10), overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)
        ],
      ),
      // child: Container(
      //   height: 155,
      //   width: 105,
      //   decoration: BoxDecoration(
      //       image: DecorationImage(
      //         image: NetworkImage(imageUrl),
      //         fit: BoxFit.contain,),
      //       borderRadius: BorderRadius.circular(5)
      //   ),
      //   child: Container(
      //     transformAlignment: Alignment.bottomCenter,
      //     height: 20,
      //     // width: 105,
      //     color: Colors.blue,
      //     child: Text(title, style: TextStyle(fontSize: 10), overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,),
      //   ),
      // ),
    );
  }
}

class BigRectangularCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  String? description;
   BigRectangularCard(this.title, this.imageUrl, this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 270,
        width: 165,
        decoration: BoxDecoration(
    image: const DecorationImage(
    image: NetworkImage('https://i.pngimg.me/thumb/f/720/comrawpixel2664109.jpg'),
    fit: BoxFit.cover,),
    borderRadius: BorderRadius.circular(5)
    ),
      child: Column(
        children: [
          Card(
            child: Image.network(imageUrl, height: 150, width: 150,),
          ),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10), overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,),
          Text(description!, style: TextStyle(fontSize: 9, color: Colors.grey.shade800), overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,),
          Text('BUY NOW', style: TextStyle(color: Colors.green.shade700),)
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
      // Container(
      // height: 250,
      // color: Colors.yellow,
      // child:
      Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Card(
               margin: EdgeInsets.all(5),
               elevation: 0,
                child: Image.network(imageUrl, height: 230, width: 340, fit: BoxFit.fill,),
              ),
          Container(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward_ios, size: 14, color: Colors.blue,)
                ],
              )),
          ],
        ),
      );
    // );
  }
}


