import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/calculation_history.dart';

class StorageService{
  Future<void> saveHistory(List<CalculationHistory> history) async{
    final prefs = await SharedPreferences.getInstance();
    List<String> list = history.map((e)=>jsonEncode(e.toMap())).toList();
    await prefs.setStringList('history', list);
  }

  Future<List<CalculationHistory>> loadHistory() async{
    final prefs = await SharedPreferences.getInstance();
    List<String>? list = prefs.getStringList('history');
    if(list==null) return [];
    return list.map((e)=>CalculationHistory.fromMap(jsonDecode(e))).toList();
  }

  Future<void> clearHistory() async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('history');
  }
}
