import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_basics/screens/first_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstScreen(),
      ),
    );
  }
}
