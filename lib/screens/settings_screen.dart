import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';
import '../providers/calculator_provider.dart';

class SettingsScreen extends StatelessWidget{
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context){
    final themeProvider = Provider.of<ThemeProvider>(context);
    final calcProvider = Provider.of<CalculatorProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
            children:[
              SwitchListTile(
                  title: const Text('Dark Theme'),
                  value: themeProvider.isDark,
                  onChanged: (_)=>themeProvider.toggleTheme()
              ),
              SwitchListTile(
                  title: const Text('Degrees Mode'),
                  value: calcProvider.isDegree,
                  onChanged: (_)=>calcProvider.toggleDegree()
              )
            ]
        ),
      ),
    );
  }
}
