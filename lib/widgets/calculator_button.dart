import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget{
  final String label;
  final VoidCallback onTap;
  const CalculatorButton({super.key,required this.label,required this.onTap});
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        child: Text(label,style: const TextStyle(fontSize:18)),
      ),
    );
  }
}
