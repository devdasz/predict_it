import 'package:flutter/material.dart';
import 'package:predict_it/screens/home_page.dart';

// main function -- entry point
void main() {
  runApp(const MainApp());
}

// Main app-- Parent of all
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Prediction App",
      theme: ThemeData(primaryColor: const Color(0xFFE432C1)),
      home: const PredictionApp(),
    );
  }
}

// As no routing implemented, this widget is same like main app
class PredictionApp extends StatefulWidget {
  const PredictionApp({super.key});

  @override
  State<PredictionApp> createState() => _PredictionAppState();
}

class _PredictionAppState extends State<PredictionApp> {
  // colors are defined for bottom nav bar
  final _selectedItemColor = Colors.white;
  final _unselectedItemColor = Colors.black;
  // final _selectedBgColor = Color(0xFFE432C1);
  // final _unselectedBgColor = Colors.white;

  // state variable to hold window position
  int _selectedIndex = 0;

  // Temporary style to make maock window looking nice
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // This will hold all window/ widgets to switch via bottom nav bar
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Index 1: Market',
      style: optionStyle,
    ),
    Text(
      'Index 2: Portfolio',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profiile',
      style: optionStyle,
    ),
  ];

// ontap function to switch screens
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//Custom boxdecoration to apply on selected button/icon only to make the
// gradient background
  BoxDecoration? _getBoxDecoration(int index) => _selectedIndex == index
      ? BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xfff21cc8), Color(0xfffd9feb)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(12))
      : null;

// Custom buildicon function to change the background of icon of
// bottom nav bar
  Widget _buildIcon(ImageIcon iconData, int index) => SizedBox(
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        child: Container(
          decoration: _getBoxDecoration(index),
          margin: const EdgeInsets.all(10),
          // color: _getBgColor(index),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                iconData,
              ],
            ),
            onTap: () => _onItemTapped(index),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _buildIcon(
                  const ImageIcon(
                      AssetImage("lib/assets/icons/icons8-news.png")),
                  0),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(
                  const ImageIcon(AssetImage("lib/assets/icons/Markets.png")),
                  1),
              label: 'Market',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(
                  const ImageIcon(AssetImage("lib/assets/icons/Portfolio.png")),
                  2),
              label: 'Portfolio',
            ),
            BottomNavigationBarItem(
              icon: _buildIcon(
                  const ImageIcon(AssetImage("lib/assets/icons/Profile.png")),
                  3),
              label: 'Profile',
            )
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: _selectedItemColor,
          unselectedItemColor: _unselectedItemColor,
          backgroundColor: Colors.white,
          elevation: 0,
          // onTap: _onItemTapped,
        ),
      ),
    );
  }
}
