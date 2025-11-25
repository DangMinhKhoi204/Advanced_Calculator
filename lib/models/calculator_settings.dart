class CalculatorSettings{
  bool isDark;
  bool isDegree;
  int decimalPrecision;
  bool haptic;
  bool sound;

  CalculatorSettings({
    this.isDark=false,
    this.isDegree=true,
    this.decimalPrecision=4,
    this.haptic=true,
    this.sound=true,
  });

  Map<String,dynamic> toMap()=> {
    'isDark':isDark,
    'isDegree':isDegree,
    'decimalPrecision':decimalPrecision,
    'haptic':haptic,
    'sound':sound,
  };

  factory CalculatorSettings.fromMap(Map<String,dynamic> map)=>CalculatorSettings(
    isDark:map['isDark'],
    isDegree:map['isDegree'],
    decimalPrecision:map['decimalPrecision'],
    haptic:map['haptic'],
    sound:map['sound'],
  );
}
