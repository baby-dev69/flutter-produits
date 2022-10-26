import 'package:finalproject/ui/View_Products.dart';
import 'package:finalproject/ui/bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Final project',
      getPages: [
        GetPage(
          name: "/accueil",
          page: () => const ViewProducts(),
          binding: ProductsBinding(),
        )
      ],
      initialRoute: "/accueil",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
