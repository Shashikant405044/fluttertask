import 'package:flutter/material.dart';
import 'package:flutter_assessment_demo/constants/image_path.dart';
import 'customer_screen.dart';
import 'grid_view.dart';
import 'map_screen.dart';




class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   int _selectedIndex = 0;
 // static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List _widgetOptions = [
      Expanded(
      child: GridViewScreen(),
    ),
     const Expanded(
      child: CustomerScreen(),
    ),
     Expanded(
      child: MapScreen(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  List horizontalimage = [
    ImagePath.neckLeshImage,

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Product List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Customers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    
    );
  }
}