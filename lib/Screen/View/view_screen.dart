import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_app/Screen/Model/wine_model.dart';
import 'package:wine_app/Screen/Provider/wine_provider.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  WineProvider? pf;
  WineProvider? pt;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<WineProvider>(context, listen: false);
    pt = Provider.of<WineProvider>(context, listen: true);
    ItemModel d = ModalRoute.of(context)!.settings.arguments as ItemModel;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height*1.1,
            child: Stack(
              children: [
                Image.asset('assets/images/b1.png'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child:  Icon(Icons.arrow_back),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(Icons.favorite_border_outlined),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(-1, -0.8),
                  child: Image.asset(
                    '${d.img}',
                    height: 350,
                    width: 201,
                  ),
                ),
                Align(
                    alignment: Alignment(0, -0.85),
                    child: Text(
                      "${d.name}",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                Align(
                    alignment: Alignment(0, -0.72),
                    child: Text(
                      "\$ ${d.price}",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                Align(
                  alignment: Alignment(0.8, -0.55),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 38,
                        width: 138,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff9DF3C4)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        height: 38,
                        width: 138,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff9DF3C4)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        height: 38,
                        width: 138,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff9DF3C4)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        height: 38,
                        width: 138,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff9DF3C4)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        height: 38,
                        width: 138,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff9DF3C4)),
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment(0.8, -0.55),
                    child: Image.asset(
                      'assets/images/t.png',
                      height: 198,
                      width: 138,
                    )),
                Align(
                  alignment: Alignment(0, 0.25),
                  child: Container(
                    height: 203,
                    width: 354,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff9DF3C4)),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Product Detail",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(height: 16),
                          Text("Cantine Nicosia, an ancient and solid Sicilian wine company with a long history and ongoing commitment to renewal, with a love for rural traditions united with a relentless search for new horizons embedded into its DNA.",style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0,0.65),
                  child: Container(
                    height: 113,
                    width: 354,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff9DF3C4)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/f.png',height: 76,width: 295,),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0,0.9),
                  child: Container(
                    height: 60,
                    width: 350,
                    // alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xff1FAB89)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_cart,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text("Add to Cart",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
