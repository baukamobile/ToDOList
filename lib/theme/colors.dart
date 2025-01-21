import 'package:flutter/material.dart';

final hintTextColor = Colors.black87;
final bottomButtonColor = Colors.white;
final buttonColor = Colors.lightGreenAccent;


ThemeData darkgreen = ThemeData(
colorScheme: const ColorScheme.dark(
    surface: Color.fromARGB(255, 22, 76, 39),
    primary: Color.fromARGB(255, 75, 221, 119),
    secondary: Color.fromARGB(255, 9, 107, 42),
    tertiary: Color.fromARGB(255, 40, 244, 81),
    inversePrimary: Color.fromARGB(255, 2, 127, 42),
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 174, 199, 174),

);

ThemeData whitetextcolor = ThemeData(
  colorScheme: ColorScheme.light(
    // brightness: Colors.white, 
    primary: Colors.white12,
     onPrimary: Colors.white,
      secondary: Colors.white,
      
)
);


TextStyle drawertext = TextStyle(
  color: whitetextcolor.secondaryHeaderColor,
  fontWeight: FontWeight.bold,
  wordSpacing: 2,
  fontSize: 25,


);


final coolblue = const Color.fromARGB(255, 64, 153, 212);