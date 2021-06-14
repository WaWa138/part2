import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    @override

  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade500,
          title: Text('TabBar Widget'),
          bottom: TabBar(
            indicatorColor: Colors.lime,
            indicatorWeight: 5.0,
            labelColor: Colors.white,
            labelPadding: EdgeInsets.only(top: 10.0),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                text: 'LOCATION',
                icon: Icon(
                  Icons.add_location_outlined,
                  color: Colors.black,
                ),
                iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
              //child: Image.asset('images/android.png'),

              Tab(
                text: 'SNOW',
                icon: Icon(
                  Icons.ac_unit_rounded,
                  color: Colors.blue,
                ),
                iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
              Tab(
                text: 'DARK',
                icon: Icon(
                  Icons.bedtime,
                  color: Colors.black,
                ),
                iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
              Tab(
                text: 'SUNNY',
                icon: Icon(
                  Icons.brightness_5_outlined,
                  color: Colors.deepOrange,
                ),
                iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
              Tab(
                text: 'CLOUDY',
                icon: Icon(
                  Icons.cloud_circle_outlined,
                  color: Colors.black,
                ),
                iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
              Tab(
                text: 'RAINY',
                icon: Icon(
                  Icons.beach_access,
                  color: Colors.blueGrey,
                ),
                iconMargin: EdgeInsets.only(bottom: 10.0),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
                child: Text(
                  'This is Cake Tab',
                  style: TextStyle(fontSize: 32),
                )),
            Center(
                child: Text(
                  'This is Radio Tab',
                  style: TextStyle(fontSize: 32),
                )),
            Center(
                child: Text(
                  'This is Gift Tab',
                  style: TextStyle(fontSize: 32),
                )),
          ],
        ),
      ),
    );
  }
}