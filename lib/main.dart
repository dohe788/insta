import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _Index = 0;

  List<Widget> _Option = <Widget>[
    Home(),
    Zoom(),
    Library(),
    Slideshow(),
    Emoticon(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
      body: _Option.elementAt(_Index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _Index,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.zoom_in),
              label: 'Zoom'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              label: 'Library'),
          BottomNavigationBarItem(
              icon: Icon(Icons.slideshow),
              label: 'Slideshow'),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_emoticon),
              label: 'Emoticon'),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _Index = index;
    });
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        SingleChildScrollView(

          child : Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(width: 20),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(width: 20),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(width: 20),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ],
          ),
        ),


            SizedBox(height: 20),
            SingleChildScrollView(

              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),

                    height: 600,
                    color: Colors.yellow,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),

                    height: 600,
                    color: Colors.blue,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),

                    height: 600,
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class Zoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('2'),
    );
  }
}

class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('3'),
    );
  }
}

class Slideshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('4'),
    );
  }
}

class Emoticon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('5'),
    );
  }
}
