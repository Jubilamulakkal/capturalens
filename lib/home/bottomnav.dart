import 'package:captura/contest/contests.dart';
import 'package:captura/home/home1.dart';
import 'package:captura/home/home2.dart';
import 'package:flutter/material.dart';

class bottomnav extends StatefulWidget {
  int indexnum = 0;

  bottomnav({super.key, required this.indexnum});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  final _pages = [
    const category(),
    const Home2(),
    //const notificationpage(),
    //const notification(),
    const Contest(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[widget.indexnum],
      bottomNavigationBar: myNav(
        index: widget.indexnum,
        onTap: (index) {
          setState(() {
            widget.indexnum = index;
          });
        },
      ),
    );
  }
}

Widget myNav({
  int? index,
  void Function(int)? onTap,
  selectedcolor,
}) {
  return BottomNavigationBar(
    showUnselectedLabels: true,
    currentIndex: index!,
    selectedItemColor: Colors.pink,
    unselectedItemColor: Colors.white,
    showSelectedLabels: true,
    onTap: onTap,
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.image_outlined,color: Colors.white),label: 'for you',backgroundColor: Colors.black12),
      BottomNavigationBarItem(icon: Icon(Icons.explore_outlined,color: Colors.white),label: 'explore',backgroundColor: Colors.black12),
      BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_outlined,color: Colors.white),label: 'upload',backgroundColor: Colors.black12),
      BottomNavigationBarItem(icon: Icon(Icons.notifications,color: Colors.white),label: 'notification',backgroundColor: Colors.black12),
      BottomNavigationBarItem(icon: Icon(Icons.rocket_launch_outlined,color: Colors.white),label: 'contest',backgroundColor: Colors.black12),

    ]
    );
    }
