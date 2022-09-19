import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

class PredictionApp extends StatefulWidget {
  const PredictionApp({super.key});

  @override
  State<PredictionApp> createState() => _PredictionAppState();
}

class _PredictionAppState extends State<PredictionApp> {
  final _selectedItemColor = Colors.white;
  final _unselectedItemColor = Colors.black;
  final _selectedBgColor = Color(0xFFE432C1);
  final _unselectedBgColor = Colors.white;
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 3: School',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color _getBgColor(int index) =>
      _selectedIndex == index ? _selectedBgColor : _unselectedBgColor;

  Color _getItemColor(int index) =>
      _selectedIndex == index ? _selectedItemColor : _unselectedItemColor;
  BoxDecoration? _getBoxDecoration(int index) => _selectedIndex == index
      ? BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xfff21cc8), Color(0xfffd9feb)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(12))
      : null;
  Widget _buildIcon(ImageIcon iconData, String text, int index) => Container(
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        child: Container(
          decoration: _getBoxDecoration(index),
          margin: EdgeInsets.all(10),
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
    // Full screen width and height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // Height (without SafeArea)
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;

    return Scaffold(
      body: Text("Hi"),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _buildIcon(
                ImageIcon(AssetImage("lib/assets/icons/icons8-news.png")),
                "home",
                0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(
                ImageIcon(AssetImage("lib/assets/icons/Markets.png")),
                "home",
                1),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(
                ImageIcon(AssetImage("lib/assets/icons/Portfolio.png")),
                "home",
                2),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(
                ImageIcon(AssetImage("lib/assets/icons/Profile.png")),
                "home",
                3),
            label: 'School',
          )
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: _selectedItemColor,
        unselectedItemColor: _unselectedItemColor,
        backgroundColor: Colors.white,
        // elevation: 0,
        // onTap: _onItemTapped,
      ),
    );
  }
}
