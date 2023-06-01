import 'package:flutter/material.dart';
import 'package:wine_app/Screen/Model/wine_model.dart';

class WineProvider extends ChangeNotifier
{
  List imageList = [
    'assets/images/w1.png',
    'assets/images/w2.png',
    'assets/images/w3.png',
    'assets/images/w4.png',
    // 'assets/images/w5.png'
  ];

  List NameList = [
    'ETNA ROSSO\n VULKA',
    'DOLCE AMORE',
    'VERDICCHIO \ndei CASTELLI',
    'ROSE \nMILLESIMATO',
    // 'GRILLO NICOSIA'
  ];

  List priceList = [
    '42.12',
    '89.78',
    '31.05',
    '56.89',
    // '56.23'
  ];

  List<WineModel> l1 = [
    WineModel(h:192 ,w: 100),
    WineModel(h:208 ,w: 80),
    WineModel(h:201 ,w: 82),
    WineModel(h:201 ,w: 70),
  ];
}