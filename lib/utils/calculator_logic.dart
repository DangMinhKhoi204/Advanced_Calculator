import 'package:math_expressions/math_expressions.dart';
import 'dart:math' as math;

class CalculatorLogic{
  static double evaluate(String expr,{bool isDegree=true}){
    expr = expr.replaceAll('×','*').replaceAll('÷','/').replaceAll('π',math.pi.toString());
    expr = expr.replaceAll('√','sqrt');
    expr = _replaceFactorial(expr);

    if(isDegree) expr = _degToRad(expr);

    Parser parser=Parser();
    Expression exp=parser.parse(expr);
    ContextModel cm=ContextModel();
    return exp.evaluate(EvaluationType.REAL,cm);
  }

  static String _replaceFactorial(String expr){
    final reg = RegExp(r'(\d+)!');
    while(reg.hasMatch(expr)){
      expr = expr.replaceAllMapped(reg,(m){
        int val=int.parse(m[1]!);
        int res=1;
        for(int i=1;i<=val;i++) res*=i;
        return res.toString();
      });
    }
    return expr;
  }

  static String _degToRad(String expr){
    expr = expr.replaceAllMapped(RegExp(r'sin\(([^)]+)\)'), (m) => 'sin((${m[1]})*3.141592653589793/180)');
    expr = expr.replaceAllMapped(RegExp(r'cos\(([^)]+)\)'), (m) => 'cos((${m[1]})*3.141592653589793/180)');
    expr = expr.replaceAllMapped(RegExp(r'tan\(([^)]+)\)'), (m) => 'tan((${m[1]})*3.141592653589793/180)');
    return expr;
  }
}
