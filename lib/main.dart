import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled38/classes/provider.dart';
import 'package:untitled38/homeScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      MultiProvider(
        providers: [
        FutureProvider(create: (_){return GetData.loadData();}, initialData: const [])
    ],
    child:
      MaterialApp(home: HomeScreen(),));
  }
}
