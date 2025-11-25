import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/calculator_provider.dart';
import 'calculator_button.dart';

class ButtonGrid extends StatelessWidget{
  final bool scientific;
  const ButtonGrid({super.key,required this.scientific});
  @override
  Widget build(BuildContext context){
    final calcProvider = Provider.of<CalculatorProvider>(context);
    final buttons = scientific
        ? ['2nd','sin','cos','tan','Ln','log',
      'x²','√','x^y','(','','÷',
      'MC','7','8','9','C','×',
      'MR','4','5','6','CE','-',
      'M+','1','2','3','%','+',
      'M-','±','0','.','π','=']
        : ['C','CE','%','÷',
      '7','8','9','×',
      '4','5','6','-',
      '1','2','3','+',
      '±','0','.','='];
    return Expanded(
      child: GridView.count(
        crossAxisCount: scientific?6:4,
        children: buttons.map((b)=>CalculatorButton(label:b, onTap:()=>calcProvider.pressButton(b))).toList(),
      ),
    );
  }
}
