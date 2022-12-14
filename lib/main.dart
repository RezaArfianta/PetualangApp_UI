import 'package:flutter/material.dart';
import 'package:petualangapp/auth/index.dart';
import 'colors.dart';

import 'launch/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
              primaryColor: PetualangColor.primaryGreen,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent)
          .copyWith(
              scaffoldBackgroundColor: Colors.white,
              colorScheme: ThemeData()
                  .colorScheme
                  .copyWith(primary: PetualangColor.primaryGreen)),
      home: IndexLogin(),
    );
  }
}
