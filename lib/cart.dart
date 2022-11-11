import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'homepage.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        bottomNavigationBar: Container(
          // color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: GNav(
              style: GnavStyle.google,
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 30,
              padding: EdgeInsets.all(16),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()));
                  },
                  gap: 12,
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  gap: 12,
                  icon: Icons.search,
                  text: "Search",
                ),
                GButton(
                  gap: 12,
                  icon: Icons.favorite,
                  text: "Favorites",
                ),
                GButton(
                  gap: 12,
                  icon: Icons.shopping_bag,
                  text: "Cart",
                )
              ],
            ),
          ),
        ));
  }
}
