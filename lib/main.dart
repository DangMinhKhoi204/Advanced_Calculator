import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/calculator_provider.dart';
import 'providers/theme_provider.dart';
import 'screens/calculator_screen.dart';

void main(){
  runApp(
      MultiProvider(
        providers:[
          ChangeNotifierProvider(create:(_)=>CalculatorProvider()),
          ChangeNotifierProvider(create:(_)=>ThemeProvider()),
        ],
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    final themeProvider=Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themeProvider.isDark?ThemeMode.dark:ThemeMode.light,
      home: const CalculatorScreen(),
    );
  }
}
