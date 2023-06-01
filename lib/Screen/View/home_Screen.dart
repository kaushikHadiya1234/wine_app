import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';
import 'package:wine_app/Screen/Model/wine_model.dart';
import 'package:wine_app/Screen/Provider/wine_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WineProvider? pf;
  WineProvider? pt;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<WineProvider>(context, listen: false);
    pt = Provider.of<WineProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset("assets/images/b.png"),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/c.png",
                        height: 30,
                        width: 30,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            size: 27,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xa1bdbdbd),
                        contentPadding: EdgeInsets.all(1),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'search wine'),
                  ),
                ),
                SizedBox(height: 90),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Suggested for you",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 25,
                          )
                        ],
                      ),
                      Text(
                        "See all",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      // crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 245,
                  ),
                  itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          ItemModel i = ItemModel(name: '${pt!.NameList[index]}',price: '${pt!.priceList[index]}',img: '${pt!.imageList[index]}');
                          Navigator.pushNamed(context, 'view',arguments: i);
                        },
                        child: Container(
                          height: 245,
                          width: 167,
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 160,
                                    width: 167,
                                    decoration: BoxDecoration(
                                      color: Color(0xffC6FFE1),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20)),
                                    ),
                                  ),
                                  Container(
                                    height: 32,
                                    width: 167,
                                    decoration: BoxDecoration(
                                      color: Color(0xff9DF3C4),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                  alignment: Alignment(0.6, -1),
                                  child: Image.asset(
                                    "${pf!.imageList[index]}",
                                    height: pf!.l1[index].h,
                                    width: pf!.l1[index].w,
                                  )),
                              Align(
                                alignment: Alignment(-0.9, 0.1),
                                child: Container(
                                  height: 150,
                                  width: 120,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Red Wine",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          "${pf!.NameList[index]}",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(height: 10),
                                        SizedBox(height: 5),
                                        Text(
                                          "Top Quality \nOEM Italian ",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "750 ml",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment(-0.8, 0.85),
                                child: Container(
                                  height: 28,
                                  width: 28,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: Color(0xff1FAB89)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment(0.4, 0.95),
                                  child: Text(
                                    "\$${pf!.priceList[index]}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 18),
                                  ))
                            ],
                          ),
                        ),
                      );
                  },
                        itemCount: pt!.priceList.length,
                ),
                    ),),
              ],
            ),
          ],
        ),
    //     bottomNavigationBar: SweetNavBar(
    //       backgroundColor: Color(0xffD7FBE8),
    //       paddingBackgroundColor: Colors.white12,
    //
    //       items: [
    //         SweetNavBarItem(sweetIcon: Icon(Icons.home_outlined),sweetLabel: ''),
    //         SweetNavBarItem(sweetIcon: Icon(Icons.home_outlined),sweetLabel: ''),
    //       ],
    //       currentIndex: 0,
    // ),
      ),
    );
  }
}
