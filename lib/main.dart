import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/homePage.dart';
import 'package:providerdemo/provider/provider_one.dart';
import 'package:providerdemo/provider/provider_two.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderOne()),
        ChangeNotifierProvider(create: (_) => ProviderTwo()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
