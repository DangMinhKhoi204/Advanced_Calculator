import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/history_provider.dart';

class HistoryScreen extends StatelessWidget{
  const HistoryScreen({super.key});
  @override
  Widget build(BuildContext context){
    final historyProvider = Provider.of<HistoryProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('History')),
      body: ListView.builder(
        itemCount: historyProvider.history.length,
        itemBuilder: (_,i){
          final h = historyProvider.history[i];
          return ListTile(
            title: Text(h.expression),
            subtitle: Text(h.result),
            onTap: ()=>Navigator.pop(context, h.result),
          );
        },
      ),
    );
  }
}
