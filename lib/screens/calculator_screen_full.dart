import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/calculator_provider.dart';
import '../providers/theme_provider.dart';
import '../widgets/display_area.dart';
import '../widgets/button_grid.dart';
import '../screens/settings_screen.dart';
import '../widgets/mode_selector.dart';
import '../widgets/history_preview.dart';
import '../providers/history_provider.dart';

class CalculatorScreenFull extends StatefulWidget{
  const CalculatorScreenFull({super.key});
  @override
  State<CalculatorScreenFull> createState()=>_CalculatorScreenFullState();
}

class _CalculatorScreenFullState extends State<CalculatorScreenFull>{
  bool scientific=false;

  @override
  Widget build(BuildContext context){
    final themeProvider = Provider.of<ThemeProvider>(context);
    final historyProvider = Provider.of<HistoryProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advanced Calculator'),
        actions:[
          IconButton(icon: const Icon(Icons.settings), onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>const SettingsScreen()))),
          IconButton(icon: const Icon(Icons.brightness_6), onPressed: ()=>themeProvider.toggleTheme()),
        ],
      ),
      body: Column(
        children:[
          const DisplayArea(),
          const HistoryPreview(),
          const ModeSelector(),
          Expanded(child: ButtonGrid(scientific:true))
        ],
      ),
    );
  }
}
