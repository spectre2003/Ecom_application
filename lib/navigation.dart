import 'package:ecom/home.dart';
import 'package:ecom/profile.dart';
import 'package:ecom/store.dart';
import 'package:ecom/whishlist.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int index = 0;
  List pages = [
    const HomeScreen(),
    const StoreScreen(),
    const WhishlistScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                selectedItemColor: Colors.blue,
                unselectedItemColor: Colors.black,
                currentIndex: index,
                onTap: (newIndex) {
                  setState(
                    () {
                      index = newIndex;
                    },
                  );
                },
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.store), label: 'Store'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite), label: 'Whishlist'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'profile'),
                ],
              ),
              // child: GNav(
              //   onTabChange: (value) {
              //     setState(() {
              //       index = value;
              //     });
              //   },
              //   // rippleColor: Colors.grey[300]!,
              //   // hoverColor: Colors.grey[100]!,
              //   gap: 8,
              //   activeColor: Colors.black,
              //   iconSize: 24,
              //   backgroundColor: Colors.yellow,
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              //   //tabBackgroundColor: Color.fromARGB(255, 8, 81, 226),
              //   color: Colors.black26,
              //   tabs: const [
              //     GButton(
              //       icon: LineIcons.home,
              //       text: "Home",
              //     ),
              //     // GButton(
              //     //   icon: LineIcons.plusCircle,
              //     //   text: "Add",
              //     // ),
              //     GButton(
              //       icon: LineIcons.plusCircle,
              //       text: "Add",
              //     ),
              //     GButton(
              //       icon: LineIcons.user,
              //       text: "Profile",
              //     ),
              //   ],
              // ),
            ),
          )),
    );
  }
}
