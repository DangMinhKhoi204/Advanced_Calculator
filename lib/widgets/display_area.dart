import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/calculator_provider.dart';

class DisplayArea extends StatelessWidget{
  const DisplayArea({super.key});
  @override
  Widget build(BuildContext context){
    final calcProvider = Provider.of<CalculatorProvider>(context);
    return Container(
      padding: const EdgeInsets.all(24),
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Text(
          calcProvider.expression,
          style: const TextStyle(fontSize:32),
        ),
      ),
    );
  }
}
