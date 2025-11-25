import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/calculator_provider.dart';
import '../providers/theme_provider.dart';
import '../widgets/display_area.dart';
import '../widgets/button_grid.dart';
import 'settings_screen.dart';

class CalculatorScreen extends StatefulWidget{
  const CalculatorScreen({super.key});
  @override
  State<CalculatorScreen> createState()=>_CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen>{
  bool scientific=false;

  @override
  Widget build(BuildContext context){
    final themeProvider=Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
          title: const Text('Advanced Calculator'),
          actions: [
            IconButton(icon: const Icon(Icons.settings),
                onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const SettingsScreen()))
            ),
            IconButton(icon: const Icon(Icons.calculate),
                onPressed: ()=>setState(()=>scientific=!scientific)
            ),
            IconButton(icon: const Icon(Icons.brightness_6),
                onPressed: ()=>themeProvider.toggleTheme()
            )
          ]
      ),
      body: Column(
          children: [
            const DisplayArea(),
            ButtonGrid(scientific: scientific)
          ]
      ),
    );
  }
}
