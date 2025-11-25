import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/history_provider.dart';

class HistoryPreview extends StatelessWidget{
  const HistoryPreview({super.key});
  @override
  Widget build(BuildContext context){
    final historyProvider = Provider.of<HistoryProvider>(context);
    final preview = historyProvider.history.take(3).toList();
    return Container(
      height:60,
      color:Colors.grey[300],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: preview.length,
        itemBuilder: (_,i){
          final h = preview[i];
          return GestureDetector(
            onTap: ()=>Navigator.pop(context,h.result),
            child: Container(
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: Column(
                  children:[Text(h.expression,style: const TextStyle(fontSize:14)), Text(h.result,style: const TextStyle(fontSize:16, fontWeight: FontWeight.bold))]
              ),
            ),
          );
        },
      ),
    );
  }
}
