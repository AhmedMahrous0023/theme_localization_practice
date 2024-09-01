import 'package:flutter/material.dart';
  const primarycolors=Colors.blue ;
  const seconderycolors=Colors.red ;

ThemeData lightTheme =ThemeData(


  brightness: Brightness.light,
  primaryColor: primarycolors,
  textTheme: TextTheme(
    titleSmall: TextStyle(
      fontSize: 16,
      color: Colors.blue
    )
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: primarycolors
  )
);

ThemeData darkTheme =ThemeData(
  brightness: Brightness.dark,
  primaryColor: seconderycolors,
  appBarTheme: AppBarTheme(
    backgroundColor: seconderycolors
  )
);