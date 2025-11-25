import 'package:flutter/material.dart';
import 'calculator_button.dart';
import 'dart:math';

class AnimatedButton extends StatefulWidget{
  final String label;
  final VoidCallback onTap;
  const AnimatedButton({super.key,required this.label,required this.onTap});
  @override
  State<AnimatedButton> createState()=>_AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  @override
  void initState(){
    super.initState();
    _controller=AnimationController(vsync:this,duration:const Duration(milliseconds:100),lowerBound:0.9,upperBound:1);
  }

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTapDown: (_)=>_controller.reverse(),
      onTapUp: (_){
        _controller.forward();
        widget.onTap();
      },
      onTapCancel: ()=>_controller.forward(),
      child: ScaleTransition(
        scale: _controller,
        child: CalculatorButton(label:widget.label,onTap: widget.onTap),
      ),
    );
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
}
