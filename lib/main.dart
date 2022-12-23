import 'dart:async';
import 'dart:io';
import 'package:flipkart_demo_app/screens/home_page_appBar.dart';
import 'package:flipkart_demo_app/widgets/main_drawer.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flipkart Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromARGB(255, 4, 123, 213) ,
            secondary:const Color.fromARGB(255, 236, 241, 241),
            tertiary: const Color.fromARGB(242, 110, 26, 159),
        brightness:  Brightness.light),
        iconTheme: const IconThemeData(
          opacity: 5
        )
      ),
      // home: const FlipkartHomePageAppbar(),
      home: const MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      // 5 seconds over, navigate to Page2.
      Navigator.push(context, MaterialPageRoute(builder: (_) => const FlipkartHomePageAppbar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flipkart'),
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    drawer: const Drawer(child: MainDrawer())
    );
  }
}



