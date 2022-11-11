import 'package:car_app/cart.dart';
import 'package:car_app/main.dart';
import 'package:car_app/search.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SearchPage()));
                },
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
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Cart()));
                },
                gap: 12,
                icon: Icons.shopping_bag,
                text: "Cart",
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              height: 60,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.list_alt_outlined,
                        color: Colors.black, size: 40),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.notification_add_sharp,
                        color: Colors.black, size: 40),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            // color: Colors.black,
                            borderRadius: BorderRadius.circular(120),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                                prefixIcon: InkWell(
                                  child: Icon(
                                    Icons.search_sharp,
                                    size: 35,
                                  ),
                                ),
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                                hintText: "Search Cars..."),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.mic_sharp,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: const Text(
                    "Best Brands",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  brands(
                      brandimage:
                          "data:image/png;base64,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"),
                  brands(
                      brandimage:
                          "data:image/jpeg;base64,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"),
                  brands(
                      brandimage:
                          "data:image/png;base64,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"),
                  brands(
                      brandimage:
                          "data:image/jpeg;base64,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"),
                  brands(
                      brandimage:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwns35SSmVXexsyJrie8uTQwKb1Ejda4DFwA&usqp=CAU")
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    child: const Text(
                      "Best Cars to watch",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                  ),
                ),
                SizedBox(
                  width: 110,
                ),
                InkWell(onTap: () {}, child: Icon(Icons.filter_3_outlined)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  carcard(
                      "https://tse2.mm.bing.net/th?id=OIP.HVttgFPGTbINTqAnBDFoZwHaD9&pid=Api&P=0"),
                  carcard(
                      "https://tse2.mm.bing.net/th?id=OIP.SWuHqrAVY_UoFHKbpCJAVgHaEv&pid=Api&P=0"),
                  carcard(
                      "https://tse3.mm.bing.net/th?id=OIP.dOkW8VVI3e7E0x2-dsLrcwHaD7&pid=Api&P=0")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    child: const Text(
                      "Electric ",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                  ),
                ),
                SizedBox(
                  width: 110,
                ),
                // InkWell(onTap: () {}, child: Icon(Icons.filter_3_outlined)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  carcard(
                      "https://tse2.mm.bing.net/th?id=OIP.UbSdO7kTuJ2frYxAMKYQGgHaFL&pid=Api&P=0"),
                  carcard(
                      "https://tse4.mm.bing.net/th?id=OIP.g1JcLBPHGzJy-bka1_TmvQHaEg&pid=Api&P=0"),
                  carcard(
                      "https://tse2.mm.bing.net/th?id=OIP.CAnBnYOfvHARaKAVDk-ZRwHaE8&pid=Api&P=0")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget brands({brandimage, brandname}) {
    return InkWell(
      onTap: () {},
      child: AspectRatio(
        aspectRatio: 1.2 / 1.2,
        child: Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(brandimage), fit: BoxFit.cover)),
        ),
      ),
    );
  }

  Widget carcard(image) {
    return InkWell(
      onTap: () {},
      child: AspectRatio(
        aspectRatio: 5.5 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(image)),
              // color: Colors.red,
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
