import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.system;
  bool get isDarkMode{
    if(themeMode == ThemeMode.system){
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    }else{
      return themeMode == ThemeMode.dark;
    }
  }
  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
class MyTheme{
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey,
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(color: Colors.white,),
    appBarTheme: AppBarTheme(color: Colors.black),




  );
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.white,
      colorScheme: ColorScheme.light(),
      iconTheme: const IconThemeData(color: Colors.black, opacity: 0.8),
    appBarTheme:  AppBarTheme(color: Colors.blue),
  );
}