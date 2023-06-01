import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_app/Screen/Provider/wine_provider.dart';
import 'package:wine_app/Screen/View/home_Screen.dart';
import 'package:wine_app/Screen/View/view_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => WineProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          'view':(context) => ViewScreen(),
        },
      ),
    ),
  );
}
