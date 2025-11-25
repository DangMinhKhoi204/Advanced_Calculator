import 'package:flutter/material.dart';
import '../models/calculation_history.dart';
import '../services/storage_service.dart';

class HistoryProvider extends ChangeNotifier{
  List<CalculationHistory> history=[];
  final StorageService storage = StorageService();

  Future<void> loadHistory() async{
    history = await storage.loadHistory();
    notifyListeners();
  }

  Future<void> addHistory(CalculationHistory h) async{
    history.insert(0,h);
    if(history.length>50) history.removeLast();
    await storage.saveHistory(history);
    notifyListeners();
  }

  Future<void> clearHistory() async{
    history=[];
    await storage.clearHistory();
    notifyListeners();
  }
}
