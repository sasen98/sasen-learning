import 'package:flutter/material.dart';
import 'package:flutter_app/Theme/theme.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => ThemeProvider(), builder: (context,_){
      final themeProvider = Provider.of<ThemeProvider>(context);
      return MaterialApp(
        themeMode: themeProvider.themeMode,
        theme: MyTheme.lightTheme,
        darkTheme: MyTheme.darkTheme,

        home: const HomePage(),
      );
    },);

  }
}
