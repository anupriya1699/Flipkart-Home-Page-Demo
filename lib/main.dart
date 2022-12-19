import 'dart:io';
import 'package:flipkart_demo_app/screens/home_page_appBar.dart';
import 'package:flutter/material.dart';

//for CERTIFICATE_ERROR_FAILED
class MyHttpOverrides extends HttpOverrides{
@override
HttpClient createHttpClient(SecurityContext? context){
return super.createHttpClient(context)
..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
}
}

void main() {
HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flipkart Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Colors.blue[600] , secondary: Colors.grey.shade300, tertiary: Colors.grey,
        brightness:  Brightness.light)
      ),
      home: FlipkartHomePageAppbar(),
      // routes: '/': ,
    );
  }
}



