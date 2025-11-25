import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/calculator_provider.dart';
import '../models/calculator_mode.dart';

class ModeSelector extends StatelessWidget{
  const ModeSelector({super.key});
  @override
  Widget build(BuildContext context){
    final calcProvider = Provider.of<CalculatorProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ChoiceChip(
          label: const Text('Basic'),
          selected: calcProvider.mode==CalculatorMode.basic,
          onSelected: (_)=>calcProvider.changeMode(CalculatorMode.basic),
        ),
        const SizedBox(width:8),
        ChoiceChip(
          label: const Text('Scientific'),
          selected: calcProvider.mode==CalculatorMode.scientific,
          onSelected: (_)=>calcProvider.changeMode(CalculatorMode.scientific),
        ),
        const SizedBox(width:8),
        ChoiceChip(
          label: const Text('Programmer'),
          selected: calcProvider.mode==CalculatorMode.programmer,
          onSelected: (_)=>calcProvider.changeMode(CalculatorMode.programmer),
        ),
      ],
    );
  }
}
