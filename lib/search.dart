import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'homepage.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            height: 60,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(Icons.list_alt_outlined,
                      color: Colors.black, size: 40),
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(Icons.notification_add_sharp,
                      color: Colors.black, size: 40),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15),
                child: const Text(
                  "Browse Cars",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
