import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  final Widget child;
  AppDrawer({required this.child, Key? key}) : super(key: key);

  // static _AppDrawerState of(BuildContext context) => context.findAncestorStateOfType<_AppDrawerState>();

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> with SingleTickerProviderStateMixin {
  static Duration duration = Duration(milliseconds: 300);
  late AnimationController _controller; //add initiation_fix

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: _AppDrawerState.duration);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    double maxSlide = 255;
    return Stack(
      children: [
        CustomDrawer(),
        Transform(
          transform: Matrix4.identity()..translate(maxSlide),
          child: widget.child,
        )
      ],
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Theme(
          data: ThemeData(
            brightness: Brightness.light,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                child: Container(
                  height: 80,
                  width: double.infinity,
                  color: Theme.of(context).colorScheme.primary,
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.home, color: Colors.white,),
                          SizedBox(width: 5,),
                          Text('Home', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                        ],
                      ),
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGS9z9Q6whRL6toSE-YCtpJZvq1lU76ktzTw&usqp=CAU')
                    ],
                  ),
                ),
                onTap: (){ print('Tapped...');}, //connect this to home page
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text('Logout'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
