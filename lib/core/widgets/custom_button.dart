import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:nice_buttons/nice_buttons.dart';
import 'package:tic_tac_toe/core/constants/enums.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final ButtonStyleType buttonStyleType;
  final Function() onTap;
  const CustomButton({super.key, required this.title, required this.buttonStyleType, required this.onTap});
bool get isButtonStyleTypeAsPurple => buttonStyleType == ButtonStyleType.purple;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding : EdgeInsets.all(6),
      decoration:BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(32),
         
      ),
      child : NiceButtons(
      gradientOrientation: GradientOrientation.Horizontal,
      startColor:isButtonStyleTypeAsPurple?  Color(0xFFB85FFF): Color(0xFFA6F208),
      endColor: isButtonStyleTypeAsPurple? Color(0xFFAB50F4):Color(0xFFA6F208),
      borderColor: isButtonStyleTypeAsPurple?Color(0xFF9023E8):Color(0xFFA6F208),
      borderRadius: 32,
      
      
      stretch: false,
      onTap:(finish){
       onTap.call() ;
      }, 
      child: Center(
        child: Text(
          title,
             style:TextStyle(color:Colors.white, fontSize: 22, fontWeight: FontWeight.bold, shadows:[BoxShadow(
              color:Colors.black26, blurRadius:8
             )] )
        ),
      ),
     )
    );
   
  }
}