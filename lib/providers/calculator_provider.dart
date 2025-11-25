import 'package:flutter/material.dart';
import '../models/calculation_history.dart';
import '../models/calculator_mode.dart';
import '../utils/calculator_logic.dart';

class CalculatorProvider extends ChangeNotifier{
  String expression='';
  double memory=0;
  CalculatorMode mode=CalculatorMode.basic;
  bool isDegree=true;

  List<CalculationHistory> history=[];

  void pressButton(String button){
    switch(button){
      case 'C': expression=''; break;
      case 'CE': if(expression.isNotEmpty) expression=expression.substring(0,expression.length-1); break;
      case '=':
        try{
          double res=CalculatorLogic.evaluate(expression,isDegree:isDegree);
          history.insert(0,CalculationHistory(expression: expression,result: res.toString()));
          if(history.length>50) history.removeLast();
          expression=res.toString();
        }catch(e){ expression='Error'; }
        break;
      case 'M+': memory += double.tryParse(expression) ?? 0; break;
      case 'M-': memory -= double.tryParse(expression) ?? 0; break;
      case 'MR': expression = memory.toString(); break;
      case 'MC': memory=0; break;
      default: expression+=button;
    }
    notifyListeners();
  }

  void changeMode(CalculatorMode m){ mode=m; notifyListeners();}
  void toggleDegree(){ isDegree=!isDegree; notifyListeners();}
}
