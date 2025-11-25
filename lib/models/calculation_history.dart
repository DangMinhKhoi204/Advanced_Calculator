class CalculationHistory{
  final String expression;
  final String result;
  CalculationHistory({required this.expression, required this.result});

  Map<String,dynamic> toMap()=>{'expression':expression,'result':result};
  factory CalculationHistory.fromMap(Map<String,dynamic> map)=>CalculationHistory(
      expression: map['expression'], result: map['result']
  );
}
